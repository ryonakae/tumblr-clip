gulp   = require 'gulp'
inline = require 'gulp-inline-source'

gulp.task 'inline', ->
  gulp
    .src 'build/*.html'
    .pipe inline()
    .pipe gulp.dest 'build/'