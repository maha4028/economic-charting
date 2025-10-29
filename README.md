# Economic Charting
The following chart types/topics are covered:
- Line graphs - using unemployment and inflation data;
- Bar chart - using stock returns;
- Stacked bar chart - using U.S. trade data;
- Dumbell plot - using U.S. demographic data.

## Macroeconomic indicators

Below are the [Consumer Price Index for All Urban Consumers](https://fred.stlouisfed.org/graph/?g=1wmdD) (CPI) and the [Unemployment Rate](https://fred.stlouisfed.org/series/UNRATE) from FRED via the `quantmod` library.

<!-- ![Plot #1](plots/plot_cpi.png) -->
<p align="center">
<img src="plots/plot_cpi.png" alt="Plot #1" width="800">
</p>

The left and right dashed lines are the Fed's target for year-over-year (YoY), or annual, inflation and the "natural rate of unemployment", respectively. The inflation target is plotted at the Fed's stated two percent target. Although the exact figure for the "natural rate of unemployment" is unkown - it usually hovers between four and five percent; Above, I plotted it at five percent.

## Phillips curve

If we plot a time series of year-over-year inflation (YoY CPI) and the unemployment rate together, we see they have an inverse relationship. When unemployment goes up inflation comes down. To better quantify this inverse relationship, we need to correlate the two series in a scatter plot.

<!-- ![Plot #2](plots/plot_cpi_unrate.png) -->
<p align="center">
<img src="plots/plot_cpi_unrate.png" alt="Plot #2" width="400">
</p>

When plotted across time, we see that the unemployment rate and inflation are indeed negatively correlated (with a correlation coefficient of -0.433). This relationship is described by [the Phillips curve](https://en.wikipedia.org/wiki/Phillips_curve). In our sample from 2000-present, we see that the highest data point for inflation is from June 2022 and our highest data point for unemployment is from April 2020.

<!-- ![Plot #Phil](plots/plot_phillips_curve.png) -->
<p align="center">
<img src="plots/plot_phillips_curve.png" alt="Plot #3" width="400">
</p>

The blue line fits a linear model on the data where we regress inflation on the unemployment rate. We can see that there is a significant amount of variation in inflation for a given level of unemployment. This tell us that there are other factors missing from our model which affect inflation.

In fact, there is a considerable amount of debate about the usefulness of the Phillips curve since there are many examples where it doesn't hold. If we plot inflation and unemployment data from the 25 years between 1965 and 1990, we see that the relationship turns positive.

<p align="center">
<img src="plots/plot_phillips_curve_stag.png" alt="Plot #4" width="400">
</p>

Today, most economists agree that the Phillips curve is only unseful in the short run, and that in the long run there is no trade-off in inflation and unemployment. This insight helps to explain the unexpectedly positive correlation in unemployment and inflation we see above. If we instead break the scatter plot from 1965-1990 into smaller groups of 2-5 calendar years, we actaully find that there are multiple downward sloping Phillips curves in the data mixed in with a couple positive curves.

<!-- If we plot unemployment and inflation grouped by their calendar year, we see that the downward sloping Phillips curve consistently appears (at different intensities) across the much shorter time window of a given calendar year. -->

<p align="center">
<img src="plots/short_phillips_curve.png" alt="Plot #4b" width="500">
</p>

This finding of several short-run Phillips curves inside of the noisy data for the spurious and singular long-run Phillips curve is supported by the theory that the relationship described by the Phillips curve only holds in the short-run. Instances where the short-run Phillips curve flips positive (1973-1974 and 1975-1976) seem to be related to an episode of stagflation and recession in the mid-1970s.

## Pandemic effects
The negative shock in the demand for labor causing a spike in unemployment, and later, the negative shock to the supply of goods and services causing higher inflation have largely worked their way through the economy. 

At its very worst, the unemployment rate was over 400%, or over 4x, its pre-pandemic level. Similarly, inflation at its very highest was increasing at a rate just under 4x its pre-pandemic pace.

<p align="center">
<img src="plots/cpi_ur_indexed.png" alt="Plot #5" width="400">
</p>

Measures of both inflation and unemployment have returned to near pre-pandemic levels. Although inflation still hovers above the two percent target.

## Stock market

<p align="center">
<img src="plots/stocks.png" alt="Plot #6" width="400">
</p>

## International trade

<p align="center">
<img src="plots/steel.png" alt="Plot #7" width="500">
</p>

## Demographic trends

<p align="center">
<img src="plots/aging.png" alt="Plot #8" width="500">
</p>

# Github commands
To copy
```
git clone [link]
```
To upload
```
git status
git add .
git commit -m "message"
git push origin main
```

To open a side-by-side preview of a markdown file in VScode, allowing you to edit the file and see the rendered output simultaneously.
```
Cmd+K V
```

# Markdown features
> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.
