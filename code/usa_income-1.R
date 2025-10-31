library("this.path")
setwd(this.dir())

library("ipumsr")
ddi <- read_ipums_ddi("usa_00008.xml")
data <- read_ipums_micro(ddi)

# read code book
data[data == 9999999] <- NA # for INCTOT and FTOTINC
data[data == 999999] <- NA # for INCWAGE

# recode states and regions
library("magrittr")
library("dplyr")
state <- ipums_val_labels(data$STATEFIP) %>% rename("state"="lbl")
region <- ipums_val_labels(data$REGION) %>% rename("region_name"="lbl")

df <- merge(x=data, y=state, by.x = "STATEFIP", by.y="val", all.x = TRUE)
df <- merge(x=df, y=region, by.x = "REGION", by.y = "val", all.x = TRUE)

# group by state - median income
bystate <- df %>% 
  filter(YEAR==2023) %>%
  group_by(state) %>%
  reframe(median_fam_inc = median(FTOTINC, na.rm=TRUE),
          mean_fam_inc = mean(FTOTINC, na.rm=TRUE))

# make a color map of median family income
# install.packages("usmap")
library("usmap")
library("ggplot2")

# blank map of the US
plot_usmap(regions = "states") + 
  labs(title = "U.S. States",
       subtitle = "This is a blank map of the United States.") + 
  theme(panel.background=element_blank())

# add in data
plot_usmap(data = bystate, values = "median_fam_inc") + 
  labs(title = "U.S. States",
       subtitle = "This is a blank map of the United States.") + 
  theme(panel.background=element_blank())

# control shading
usa_median_family_income <- plot_usmap(data = bystate, values = "median_fam_inc") + 
  scale_fill_continuous(low="yellow", high="blue", "Income (USD)", label=scales::comma) + 
  labs(
    title = "Median Family Income",
    # subtitle = "This is a blank map of the United States.",
    caption = "Note: 2023 1-year ACS.\nSource: Census Bureau via IPUMS."
       ) + 
  theme(
    panel.background=element_blank(),
    legend.position = "right",
    plot.caption = element_text(hjust = 0),
    plot.title = element_text(family = "Helvetica", face = "bold", size = 14)
    )

usa_median_family_income

ggsave(
  "../plots/usa_median_family_income.png",
  plot = usa_median_family_income,
  width = 3.9*1.5,
  height = 3.2+(0.13*3),
  units = "in",
  dpi = 300,
  bg = "white"
  )
