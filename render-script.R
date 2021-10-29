
channel <- c(1,2,3,4,5,6)
for (channel in channel) {
  rmarkdown::render(
    'project2.Rmd',params = list(data = channel), output_file = paste0(channel, '.md')
  )
}

