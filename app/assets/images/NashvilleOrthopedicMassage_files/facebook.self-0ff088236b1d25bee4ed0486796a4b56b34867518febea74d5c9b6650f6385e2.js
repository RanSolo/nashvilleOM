(function() {
  window.fbAsyncInit = function() {
    FB.init({
      appId: '399509416918661',
      xfbml: true,
      version: 'v2.5'
    });
  };

  (function(d, s, id) {
    var fjs, js;
    js = void 0;
    fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {
      return;
    }
    js = d.createElement(s);
    js.id = id;
    js.src = '//connect.facebook.net/en_US/sdk.js';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'facebook-jssdk');

}).call(this);
