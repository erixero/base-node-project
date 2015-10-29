# Run predefined tasks whenever watched file patterns are added, changed or deleted
# https://github.com/gruntjs/grunt-contrib-watch

module.exports =

  options:
    interrupt: true
    atBegin: false
    event: ['added', 'modified', 'deleted'],

  client_view:
    files: [
      'src/client/assets/images/**/*.{png,jpg,gif,svg}'
      'src/client/**/*.jade'
      '!src/client/libs/'
    ]
    tasks: [
      'newer:imagemin:client_images'
      'newer:jade:client_app'
    ]

  client_app:
    files: ['src/client/app/**/*.coffee']
    tasks: [
      'newer:coffee:client_app'
      'newer:coffee:client_test'
      ]

  server_app:
    files: ['src/server/**/*.coffee']
    tasks: [
      'newer:coffee:server_app'
      'newer:coffee:server_test'
    ]
