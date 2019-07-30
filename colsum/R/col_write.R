col_write <- function(df, path = tempdir()) {

  col_names <- colnames(df)
  file_paths <- map_chr(
    col_names,
    ~ file.path(path, paste0(.x, '.txt'))
  )

  # .x <- df[[1]]
  # .y <- file_paths[[1]]
  # writeLines(as.character(.x), .y)


  walk2(df, file_paths, ~ writeLines(as.character(.x), .y))
}
