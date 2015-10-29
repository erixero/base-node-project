module.exports =

  release: [
    'build'
    'concurrent:concat_client_files'
    'concurrent:uglify_client_files'
    'concurrent:clean_build'
  ]

  build: [
    'concurrent:clean_client'
    'concurrent:clean_server'
    'concurrent:minify_client_images'
    'concurrent:compile_client'
    'concurrent:compile_server'
    'copy:client_libraries'
    'jade:client_app'
  ]

  client_tdd: [
    'concurrent:clean_client'
    'concurrent:compile_client'
    'watch:client_app'
  ]

  server_tdd: [
    'concurrent:clean_server'
    'concurrent:compile_server'
    'watch:server_app'
  ]

  client_view: [
    'concurrent:clean_client'
    'concurrent:minify_client_images'
    'jade:client_app'
    'watch:client_view'
  ]
