library(ggplot2)

# get data
gapminder <- read.csv("data/gapminder_data.csv")

# plot data
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_boxplot()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color = continent)) + geom_boxplot()

ggplot(data = gapminder, 
       mapping = aes(x = year, 
                     y = lifeExp, 
                     group = country, 
                     color = continent)) + 
  geom_line()

ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country)) +
  geom_point(mapping = aes(color=continent)) + geom_line()

my_plot <- ggplot(data = gapminder, 
       mapping = aes(x = gdpPercap, 
                     y = lifeExp,
                     color = continent)) +
  geom_point(alpha = 0.5, size = 3, shape = 17
             ) + 
  scale_x_log10() +
  geom_smooth(method = "lm", linewidth = 1.5)

ggsave("results/myplot.png", plot = my_plot, width = 12, height = 10, units = "cm", dpi = 300)

#day two doing subplots

americas <- gapminder[gapminder$continent == "Americas",]

# panel plot
ggplot(americas, mapping = aes(x=year, y = lifeExp, color = country)) +
  geom_line()+
  facet_wrap( ~country) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Life expectancy by year", x = "year", 
       y = "Life expectancy", color = "Continent")

ggsave("results/panelplot.pdf", plot = panel_plot)

#now do it for asia

asia <- gapminder[gapminder$continent == "Asia",]

# panel plot
ggplot(asia, mapping = aes(x=year, y = lifeExp, color = country)) +
  geom_line()+
  facet_wrap( ~country) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Life expectancy by year", x = "year", 
       y = "Life expectancy", color = "Continent")
