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
  # $win.on 'load', ->
    $masonryParent.masonry
      itemSelector: '.js-masonryChild'
      gutter: 0
      transitionDuration: 0

  # Inifinite Scroll
  $pager = $('.js-pager')
  $pagerNext = $('.js-pager-next')
  $loader = $('.js-loader')
  $masonryParent.infinitescroll
    navSelector: $pager
    nextSelector: $pagerNext
    itemSelector: '.m-post'
    loadingImg: ''
    loadingText: ''
    (elm) ->
      # loading
      $loader.addClass('is-active')
      $newItem = $(elm).css('opacity' : 0)
      # load done
      $newItem.imagesLoaded ->
        $masonryParent.masonry('appended', $newItem)
        $newItem.css('opacity' : 1)
        setTimeout ->
          $loader.removeClass('is-active')
        , 400


  # Image URL
  $inputUrl = $('.js-inputUrl')
  $inputUrl.on 'mouseup', ->
    $(this).select()


  # Navigation
  $navToggle = $('.js-navToggle')
  $navList = $('.js-navList')

  $navToggle.on 'click', ->
    $navList.toggleClass('is-nav-open')