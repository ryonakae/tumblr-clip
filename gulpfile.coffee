gulp   = require 'gulp'
inline = require 'gulp-inline-source'
rename = require 'gulp-rename'

gulp.task 'inline', ->
  gulp
    .src 'build/*.html'
    .pipe inline
      compress: false
      inlineJS: true
      inlineCSS: true
      pretty: true
    .pipe gulp.dest 'build/'
    .pipe rename 'clip.html'
    .pipe gulp.dest './'