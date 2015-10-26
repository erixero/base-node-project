# Concatenate files
# https://github.com/gruntjs/grunt-contrib-concat

module.exports =
  client_app:
    src: [
      'build/client/app/**/*.js'
    ]
    dest: 'build/client/app/app.js'
  client_libs:
    src: [
      'build/client/libs/**/*.js'
    ]
    dest: 'build/client/libs/libs.js'
