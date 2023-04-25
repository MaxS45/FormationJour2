library(targets)
source("R/functions.R")
tar_option_set(packages = c("dplyr", "ggplot2","forcats","renv"))
list(
  tar_target(file, "data.csv", format = "file"),
  tar_target(data, get_data(file)),
  tar_target(model, fit_model(data)),
  tar_target(plot, plot_model(model, data))
)

