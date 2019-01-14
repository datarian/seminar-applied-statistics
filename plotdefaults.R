
ggplot2::theme_set(ggplot2::theme_bw(base_size = 20))
ggplot2::theme_update(
    plot.background = ggplot2::element_rect(colour="white"),
    plot.title = element_text(hjust = 0.5),
    panel.background = ggplot2::element_rect(colour = "black", fill=NA),
    panel.grid.major = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.border = ggplot2::element_rect(colour = "black", size=0.5),
    axis.line = ggplot2::element_line(colour = "black",size= 0.5),
    line = ggplot2::element_line(size=0.3),
    axis.ticks = ggplot2::element_line(colour = "black"),
    axis.title = ggplot2::element_text(size=20),
    axis.title.x = ggplot2::element_text(face="bold"),
    axis.title.y = ggplot2::element_text(face="bold"),
    text = ggplot2::element_text(size=12),
    axis.text = ggplot2::element_text(colour="black", size=16),
    strip.text.x = ggplot2::element_text(face="bold"),
    strip.background = ggplot2::element_rect(colour="black", fill="white"),
    legend.text = ggplot2::element_text(size=16),
    legend.key = ggplot2::element_rect(colour="white", size = 0.3),
    legend.title = ggplot2::element_blank(),
    aspect.ratio = 0.618,
    legend.position="bottom"
)

ggplot2::scale_fill_manual(values=ggthemes::scale_fill_colorblind(8))
ggplot2::scale_color_manual(values=ggthemes::scale_colour_colorblind(8))

pal <- viridis::viridis(8)
