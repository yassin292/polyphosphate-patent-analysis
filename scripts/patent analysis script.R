# ---------------------------
#  Load required packages
# ---------------------------
install.packages("RColorBrewer")
library(RColorBrewer)
library(dplyr)

# ---------------------------
#  Load your dataset
# ---------------------------
patents <- read.csv("polyP_patents.csv", stringsAsFactors = FALSE)

# ---------------------------
#  Clean Year field
# ---------------------------
patents$Year <- as.numeric(substr(patents$Publication.Date, 1, 4))

# ---------------------------
#  FIGURE S7: Patents per Year
# ---------------------------
barplot(table(patents$Year),
        main = "Polyphosphate-Related Patents per Year",
        xlab = "Year", ylab = "Number of Patents",
        col = "steelblue", border = "black", las = 2)

# ---------------------------
# FIGURE S8: Top Jurisdictions
# ---------------------------
top_juris <- sort(table(patents$Jurisdiction), decreasing = TRUE)
top_juris <- top_juris[names(top_juris) %in% c("US", "EP", "WO")]  # keep only 3 major ones

barplot(top_juris,
        main = "Top Jurisdictions",
        xlab = "Jurisdiction", ylab = "Number of Patents",
        col = "darkgreen", border = "black")

# ---------------------------
# 🏢 FIGURE S9: Pie Chart of Top Applicants by Share
# ---------------------------
# Count top 10 applicants
top_assignees <- patents %>%
  filter(!is.na(Applicants)) %>%
  count(Applicants, sort = TRUE) %>%
  top_n(10)

# Clean names
top_assignees$Applicants <- tools::toTitleCase(tolower(top_assignees$Applicants))

# Colors
colors <- brewer.pal(10, "Set3")

# Percent labels
percentages <- round(100 * top_assignees$n / sum(top_assignees$n), 1)
labels <- paste0(percentages, " %")

# Pie chart
layout(matrix(c(1, 2), nrow = 1), widths = c(2, 1))  # pie + legend
par(mar = c(4, 4, 4, 2), xpd = TRUE)
pie(top_assignees$n,
    labels = labels,
    col = colors,
    main = "Top Patent Applicants by Share",
    cex = 1.2)

# Legend
par(mar = c(2, 1, 2, 1))
plot.new()
legend("center",
       legend = paste0(top_assignees$Applicants, " (", top_assignees$n, ")"),
       fill = colors,
       border = NA,
       cex = 0.9,
       bty = "n")
