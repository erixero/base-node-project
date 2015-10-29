# Compile Jade templates
# https://github.com/gruntjs/grunt-contrib-jade

module.exports =

  options:
    pretty: true

  client_app:
    files: [
      cwd: 'src/'
      src: [
        'client/**/*.jade'
      ]
      dest: 'build/'
      expand: true
      ext: '.html'
    ]
