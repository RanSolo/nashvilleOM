(function() {
  $(function() {
    var muted, randCol, randOrd, shakeIt, showAdmin, song;
    song = $('#owl-hoot');
    $('#admin').click(function() {
      return showAdmin();
    });
    $("#landing-logo").on("click", function() {
      var type;
      type = 'landing';
      return shakeIt(type);
    });
    $("#index-logo").on("click", function() {
      var type;
      type = 'index';
      return shakeIt(type);
    });
    showAdmin = function() {
      return $('.table').toggleClass('hidden');
    };
    shakeIt = function(type, event) {
      var animationEnd, animationName;
      muted();
      animationName = 'animated slideInUp';
      animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
      randCol();
      $('#landing-logo, #index-logo').removeClass(animationName);
      $('#landing-logo, #index-logo').css({
        '-webkit-animation-duration': '.3s',
        '-webkit-animation-iteration-count': '3'
      });
      randCol();
      animationName = 'animated rubberBand';
      return $("#landing-logo, #index-logo").addClass(animationName).one(animationEnd, function() {
        $('#landing-logo, #index-logo').removeClass(animationName);
        randCol();
        $('#landing-logo, #index-logo').css({
          '-webkit-animation-duration': '.3s',
          '-webkit-animation-iteration-count': '4'
        });
        randCol();
        animationName = 'animated shake';
        return $("#landing-logo, #index-logo").addClass(animationName).one(animationEnd, function() {
          randCol();
          $('#landing-logo, #index-logo').removeClass(animationName);
          if (type === 'landing') {
            window.location.replace("http://www.nightowlnashville.com/welcomes");
          } else {
            return;
          }
          return randCol();
        });
      });
    };
    muted = function(type) {
      var $mute;
      $mute = $(':checkbox#Mute');
      if ($mute.prop('checked') === false) {
        return $("audio").trigger('play');
      }
    };
    randCol = function() {
      var colors, yieldColors;
      colors = new Array('#F0F2C3', '#18516D', '#0D212D', '#486C76');
      yieldColors = new Array('#18516D', '#0D212D', '#486C76');
      colors.sort(randOrd);
      yieldColors.sort(randOrd);
      $('body').css('background-color', colors[0]);
      $('.transparent-dark').css('background-color', yieldColors[1]);
      return $('.transparent-light').css('background-color', yieldColors[2]);
    };
    return randOrd = function() {
      return Math.round(Math.random()) - 0.5;
    };
  });

}).call(this);
