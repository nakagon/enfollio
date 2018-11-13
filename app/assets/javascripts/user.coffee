# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  do ->
    nav     = $("#user-menu")
    navpos  = nav.offset().top
    fixedmenu = () ->
      currentpos = $(this).scrollTop()
      if currentpos > navpos
        nav.addClass("fixed").addClass("shadow")

      else
        nav.removeClass("fixed").removeClass("shadow")

    smoothScroll = () ->
      speed = 500
      href= $(this).attr("href")
      target = $(href == "#" ||  href)
      currentpos = $(window).scrollTop()

      position = if navpos < currentpos then target.offset().top  - nav.height() else target.offset().top - nav.height() * 2

      $("html, body").animate({scrollTop:position}, speed, "swing")
      false

    $(window).on
      'scroll': fixedmenu

    $('a[href^="#"]').on
      'click' : smoothScroll