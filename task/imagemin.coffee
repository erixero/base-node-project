# Minify images
# https://github.com/gruntjs/grunt-contrib-imagemin

module.exports =

  client_images:

    options:
      optimizationLevel: 7
      interlaced: true
      progressive: true

    files: [
      expand: true,
      cwd: 'src/client/assets/images/',
      src: ['**/*.{png,jpg,gif,svg}'],
      dest: 'build/client/assets/images/'
    ]
