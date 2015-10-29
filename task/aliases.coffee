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
