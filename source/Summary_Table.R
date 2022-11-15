library(tidyverse)
library(dplyr)

# Installs and initializes package for inserting tables into markdown files

install.packages("formattable")
library(formattable)
library(knitr)

# Pulls data from Summary_Info to gain access to summary_info table

source("./info201/Project/project-team-7/source/Summary_Info.R")

# Formats summary_info table to have a title and appear cleaner in markdown files

formattable(summary_info) %>%
  kable("html", escape = F, caption = "Spotify Songs - Average Statistics", align = c("l", "r", "r", "r", "r"))
