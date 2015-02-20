#= require 'jquery/dist/jquery.min.js'
#= require 'masonry/dist/masonry.pkgd.min.js'
#= require_tree ./lib

# jQuery
$ ->
  # window size
  $win = $(window)
  _winWidth = $win.width()
  _winHeight = $win.height()

  $win.on 'load resize', ->
    _winWidth = $(@).width()
    _winHeight = $(@).height()


  # Masonry
  $masonryParent = $('.js-masonryParent')
  $masonryParent.imagesLoaded ->
    $masonryParent.masonry
      itemSelector: '.js-masonryChild'
      gutter: 0
      transitionDuration: 0


  # Input
  $inputUrl = $('.js-inputUrl')
  $inputUrl.on 'mouseup', ->
    $(this).select()


  # Navigation
  $navToggle = $('.js-navToggle')
  $navList = $('.js-navList')

  $navToggle.on 'click', ->
    $navList.toggleClass('is-nav-open')