# r-statistics
# http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html#Area%20Chart

library(ggplot2)
library(scales)
theme_set(theme_classic())

ggplot(cty_mpg, aes(x=make, y=mileage)) +
  geom_point(col="tomato", size=3) + 
  geom_segment(aes(x=make,
                   xend=make,
                   y=min(mileage),
                   yend=max(mileage)),
               linetype="dashed",
               size=0.1) +
  labs(title="Dot Plot",
       subtitle="Make vs Avg. Mileage",
       caption="source: mpg") +
  coord_flip()

ggsave('plot2.png')
