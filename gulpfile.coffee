gulp   = require 'gulp'
inline = require 'gulp-inline-source'

gulp.task 'inline', ->
  gulp
    .src 'build/*.html'
    .pipe inline
      compress: false
      inlineJS: true
      inlineCSS: true
      pretty: true
    .pipe gulp.dest 'build/'