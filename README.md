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

When plotted together, the unemployment rate and inflation seem to have an inverse relationship. When unemployment goes up inflation comes down.

<!-- ![Plot #2](plots/plot_cpi_unrate.png) -->
<p align="center">
<img src="plots/plot_cpi_unrate.png" alt="Plot #2" width="400">
</p>

To better observe this inverse relationship, we need to plot the two series across time in a scatter plot.

## Phillips curve

When plotted across time, we see that unemployment and inflation are indeed negatively correlated with a correlation coefficient of -0.433. This relationship is described by [the Phillips curve](https://en.wikipedia.org/wiki/Phillips_curve). In our sample, from 2000-present, we see that the highest data point for inflation is from June 2022 and our highest data point for unemployment is from April 2020.

<!-- ![Plot #Phil](plots/plot_phillips_curve.png) -->
<p align="center">
<img src="plots/plot_phillips_curve.png" alt="Plot #2" width="400">
</p>

The blue line fits a linear model where we regress inflation on the unemployment rate. We can see that there is a significant amount of variation in observed inflation for a given level of unemployment. This tell us that there are other factors which affect inflation which are not included in our model.

# Github Commands
To copy:
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
