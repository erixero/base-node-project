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
