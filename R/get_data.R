url <- "http://gagnaveita.vegagerdin.is/api/vedur2014_1"

req <- httr2::request(url)

res <- req |>
  httr2::req_perform()

res_json <- httr2::resp_body_json(res)

new_data <- dplyr::tibble(
  data = list(res_json)
) |>
  tidyr::unnest_longer(data) |>
  tidyr::unnest_wider(data)



