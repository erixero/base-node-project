module.exports =
  release: [
    'concurrent:concat_client_files'
    'concurrent:uglify_client_files'
  ]
  build: [
    'concurrent:minify_client_images'
  ]
  front_end_develop: [
    'concurrent:minify_client_images'
    'watch:client_images'
  ]
