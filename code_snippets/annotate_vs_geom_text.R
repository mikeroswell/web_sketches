# load library
library(ggplot2)

# example plot
df <- data.frame("x" = c(1,2,3,4),"y" = c(15,19,35,47))

p <- ggplot(df, aes(x,y)) + 
  geom_point(size=1) +
  geom_smooth(method = "lm", se=FALSE, formula=y~x) 

# lousy resolution from geom_text

png("figure/fuzzy_example.png")
p + geom_text(aes(x = 3.5, y = 37, label ="123456789"),size=12, parse = TRUE)
dev.off()
# but fine resolution from `annotate()`
png("figure/crisp_example.png")
p + annotate("text", x = 3.5, y = 37, label ="123456789", size = 12)
dev.off()
