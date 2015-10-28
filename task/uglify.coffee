# Minify files with UglifyJS
# https://github.com/gruntjs/grunt-contrib-uglify

module.exports =

  options:
    mangle: false
    compress:
      drop_console: true
      sequences: true
      drop_debugger: true
    preserveComments: false

  client_app:
    src: 'build/client/app/app.js',
    dest: 'build/client/app/app.min.js'

  client_libs:
    src: 'build/client/libs/libs.js',
    dest: 'build/client/libs/libs.min.js'
