module.exports =

  release: [
    'build'
    'concurrent:concat_client_files'
    'concurrent:uglify_client_files'
  ]

  build: [
    'concurrent:minify_client_images'
    'concurrent:compile_server'
    'concurrent:compile_client'
  ]

  client_tdd: [
    'concurrent:minify_client_images'
    'concurrent:compile_client'
    'watch:client_app'
  ]

  server_tdd: [
    'concurrent:compile_server'
    'watch:server_app'
  ]
