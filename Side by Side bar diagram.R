# Install and load the required packages
#install.packages("ggplot2")
library(ggplot2)

# Sample data for the bar chart
data <- data.frame(Category = c("A", "B", "C","D","Not Sure"),
                   Men= c(0.444,0.253,0.121,0.141,0.04),
                   Women = c(0.18,0.37,0.12,0.14,0.19))

# Convert data to long format
data_long <- tidyr::gather(data, key = "Value", value = "Amount", -Category)
data_long
# Create the side-by-side vertical bar chart
ggplot(data_long, aes(x = Category, y = Amount, fill = Value)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Side-by-Side Vertical Bar Chart",
       x = "Category",
       y = "Value") +
  scale_fill_manual(values = c("Men" = "blue", "Women" = "red")) +
  theme_minimal()

