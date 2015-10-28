# Compile CoffeeScript files to JavaScript
# https://github.com/gruntjs/grunt-contrib-coffee

module.exports =

  options:
    bare: true
    join: false
    flatten: false

  client_app:
    expand: true
    cwd: 'src/'
    src: ['client/**/*.coffee']
    dest: 'build/'
    rename: (dest, src) ->
      folder = src.substring 0, src.lastIndexOf '/'
      filename = src.substring src.lastIndexOf '/', src.length
      filename = filename.substring 0, filename.lastIndexOf '.'
      dest + folder + filename + '.js'

  server_app:
    expand: true
    cwd: 'src/'
    src: ['server/**/*.coffee']
    dest: 'build/'
    rename: (dest, src) ->
      folder = src.substring 0, src.lastIndexOf '/'
      filename = src.substring src.lastIndexOf '/', src.length
      filename = filename.substring 0, filename.lastIndexOf '.'
      dest + folder + filename + '.js'

  client_test:
    expand: true
    cwd: 'test/'
    src: ['client/**/*.coffee']
    dest: 'build/test/'
    rename: (dest, src) ->
      folder = src.substring 0, src.lastIndexOf '/'
      filename = src.substring src.lastIndexOf '/', src.length
      filename = filename.substring 0, filename.lastIndexOf '.'
      dest + folder + filename + '.js'

  server_test:
    expand: true
    cwd: 'test/'
    src: ['server/**/*.coffee']
    dest: 'build/test/'
    rename: (dest, src) ->
      folder = src.substring 0, src.lastIndexOf '/'
      filename = src.substring src.lastIndexOf '/', src.length
      filename = filename.substring 0, filename.lastIndexOf '.'
      dest + folder + filename + '.js'
