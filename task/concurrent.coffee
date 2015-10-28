# Run grunt tasks concurrently
# https://github.com/sindresorhus/grunt-concurrent

module.exports =
  options:
    limit: 2

  concat_client_files: [
    'concat:client_app'
    'concat:client_libs'
    ]

  minify_client_images: [
    'imagemin:client_images'
    ]

  uglify_client_files: [
    'uglify:client_app'
    'uglify:client_libs'
    ]

  compile_client: [
    'coffee:client_app'
    'coffee:client_test'
  ]

  compile_server: [
    'coffee:server_app'
    'coffee:server_test'
  ]

  clean_client: [
    'clean:client_app'
    'clean:client_test'
  ]

  clean_server: [
    'clean:server_app'
    'clean:server_test'
  ]

  clean_build: [
    'clean:client_javascript'
    'clean:build_tests'
  ]
