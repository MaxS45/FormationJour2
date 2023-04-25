library(targets)
source("R/functions.R")
tar_option_set(packages = c("dplyr", "ggplot2","forcats","renv","gt","arrow"))
list(
  tar_target(secret, "secrets.yaml", format = "file"), 
  tar_target(file_token, read_yaml_secret(secret)),
  tar_target(file_data, "individu_reg.parquet", format = "file"),
  tar_target(data, read_from_parquet(file_data), format="parquet"),
  tar_target(clean_data, retraitement_donnees(data)),
  tar_target(table_age, produce_table_age(clean_data))
)




