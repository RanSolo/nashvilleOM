#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require bootstrap-sprockets
#= require moment
#= require jquery.qtip.js
#= require fullcalendar
#= require bootstrap-datetimepicker
#= require turbolinks
#= require_tree .
$ ->
  $('#admin').click -> showAdmin()

  $("#landing-logo").on "click", ->
    type = 'landing'
    shakeIt(type)
  $("#index-logo").on "click", ->
    type = 'index'
    shakeIt(type)
  showAdmin = ->
    $('.table').toggleClass('hidden')
  shakeIt = (type, event) ->
    muted()

    animationName = 'animated slideInUp'
    animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'
    randCol()
    $('#landing-logo, #index-logo').removeClass(animationName)
    $('#landing-logo, #index-logo').css {'-webkit-animation-duration': '.3s', '-webkit-animation-iteration-count': '3'}
    randCol()
    animationName = 'animated rubberBand'
    $("#landing-logo, #index-logo").addClass(animationName).one animationEnd, ->
      $('#landing-logo, #index-logo').removeClass animationName
      randCol()
      $('#landing-logo, #index-logo').css {'-webkit-animation-duration': '.3s', '-webkit-animation-iteration-count': '4'}
      randCol()
      animationName = 'animated shake'
      $("#landing-logo, #index-logo").addClass(animationName).one animationEnd, ->
        randCol()
        $('#landing-logo, #index-logo').removeClass animationName
        if type == 'landing'
          window.location.replace("http://www.nashvilleOM.com/welcomes")
        else
          return
        randCol()
  muted = (type) ->
    $mute = $(':checkbox#Mute')
    if $mute.prop('checked') == false
      $("audio").trigger('play')
  randCol = ->
    colors = new Array('#F0F2C3', '#18516D', '#0D212D', '#486C76')
    yieldColors = new Array('#18516D', '#0D212D', '#486C76')
    colors.sort(randOrd)
    yieldColors.sort(randOrd)
    $('body').css('background-color', colors[0] )
    $('.transparent-dark').css('background-color', yieldColors[1] )
    $('.transparent-light').css('background-color', yieldColors[2] )
  randOrd = ->
    return (Math.round(Math.random())-0.5)
