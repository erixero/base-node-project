# Clean files and folders
# https://github.com/gruntjs/grunt-contrib-clean

module.exports =

  options:
    force: true

  client_app:
    src: [
      'build/client'
    ]

  server_app:
    src: [
      'build/server'
    ]

  client_test:
    src: [
      'build/test/client'
    ]

  server_test:
    src: [
      'build/test/server'
    ]

  client_javascript:
    src: [
      'build/client/app/**/*.js'
      '!build/client/app/**/*.min.js'
      'build/client/libs/**/*.js'
      '!build/client/libs/**/*.min.js'
      'build/client/app/common'
    ]

  build_tests:
    src: [
      'build/test'
    ]
