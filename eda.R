summary(wine.trans)
str(wine.trans)
dim(wine.trans)

describe(wine.trans)

# Response

table(wine.trans$qual) # very unbalanced: ~1400 poor, 200 good

# barplot of response categories
response_boxplot <- wine.trans %>%
mutate(qual = factor(qual, labels=c("poor", "good"))) %>%
count(qual) %>% ungroup() %>% mutate(percentage = prop.table(n) * 100) %>%  ggplot(aes(x = qual, y = percentage, fill = qual)) + ylim(0, 100) + geom_bar(stat = "identity", position = "dodge") + geom_text(aes(y = percentage + 5, label = paste0(round(percentage, 2), "%")), position = position_dodge(width = 0.9), size = 3) + xlab("Quality") + ylab("Response percentage") + viridis::scale_fill_viridis(discrete = TRUE, guide=FALSE)

# histogram of original response levels
response_orig_hist <- cbind(wine, qual) %>%
    ggplot(aes(x=quality, fill=qual)) +
    geom_bar() +
    scale_x_continuous(breaks=scales::pretty_breaks(n=5)) +
    scale_fill_viridis_d(guide=F) + xlab("Quality") + ylab("Count")


# Boxplot explanatory variables

pal <- viridis(2)

boxplot_data <- scale(wine.trans[,-12],center=F)  %>%  as.data.frame() %>%
    mutate(qual = factor(qual, labels=c("poor", "good"))) %>%
    melt(id.vars="qual",variable.name="explanatory",value.name="value")

## PCA

pca2 <-prcomp(wine.trans[-12],  scale.=TRUE)
