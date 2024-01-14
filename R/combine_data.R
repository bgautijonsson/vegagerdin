old_data <- readr::read_csv("data/data.csv")

combined_data <- dplyr::bind_rows(
  old_data,
  new_data
) |>
  dplyr::distinct()
