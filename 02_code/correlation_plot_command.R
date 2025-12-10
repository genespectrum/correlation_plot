set.seed(123)
library(corrplot)

# Import and read your csv file
correlation_data <- file.choose()
correlation_data <- read.csv(correlation_data)

# Calculate correlation matrix
correlation_data <- cor(correlation_data)

# Plot

corrplot(
  correlation_data,
  method = "color",
  col = colorRampPalette(c("#2166AC", "#FFFFFF", "#B2182B"))(200),
  addCoef.col = "black",
  number.cex = 0.5,
  tl.col = "black",
  tl.cex = 0.8,
  tl.srt = 45,
  order = "hclust",
  diag = FALSE,
  mar = c(1,1,1,1)
)
title("Correlation Matrix of Gene Expression", line = 3.1, cex.main = 1.2)
