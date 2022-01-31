# Create plots for presentations, papers, reports

# RAD: vector graphics (pdf is simplest) will generally have the best quality, but png files are easier to scroll through


ggplot(dat, aes(speed, log10(emis.n), colour = factor(temp.c))) + 
  geom_point() + 
  facet_grid(. ~ temp.c) + 
  geom_line(aes(speed, pred1))
ggsave('../plots/emis.png', height = 4, width = 6)

