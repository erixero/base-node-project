# Copy files and folders
# https://github.com/gruntjs/grunt-contrib-copy

module.exports =

  options:
    dot: true
    filter: 'isFile'

  client_libraries:
    expand: true
    cwd: 'src/client/libs'
    dest: 'build/client/libs'
    src: [
      '**/*'
    ]
