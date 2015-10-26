# Run predefined tasks whenever watched file patterns are added, changed or deleted
# https://github.com/gruntjs/grunt-contrib-watch

module.exports =
  options:
    interrupt: true
    atBegin: true
  client_images:
    files: ['src/client/assets/images/**/*.{png,jpg,gif,svg}']
    tasks: ['imagemin:client_images']
