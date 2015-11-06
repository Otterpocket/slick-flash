var SlickFlash;

SlickFlash = (function() {
  function SlickFlash() {}

  SlickFlash.prototype.warning = function(msg) {
    var container, content, line, msg_body, msg_type;
    container = $('<div>');
    content = $('<div>');
    msg_type = $('<span>');
    msg_body = $('<span>');
    line = $('<div>');
    msg_type.text('Warning');
    msg_body.text(msg);
    container.addClass("slick-flash warning");
    content.addClass("message-content");
    msg_type.addClass('message-type');
    msg_body.addClass('message-body');
    line.addClass('line');
    content.appendTo(container);
    msg_type.appendTo(content);
    msg_body.appendTo(content);
    line.appendTo(container);
    return $("body").append(container);
  };

  SlickFlash.prototype.information = function(msg) {
    return console.log('INFOINFOIFO');
  };

  SlickFlash.prototype.good = function(msg) {
    return console.log('YEP GOOD');
  };

  SlickFlash.prototype.bad = function(msg) {
    return console.log('BABDS');
  };

  return SlickFlash;

})();

(function($) {
  return $.extend({
    slickFlash: function(msg_type, msg) {
      var sf;
      sf = new SlickFlash;
      switch (msg_type) {
        case 'warning':
          return sf.warning(msg);
        case 'information':
          return sf.warning(msg);
        case 'good':
          return sf.warning(msg);
        case 'bad':
          return sf.warning(msg);
      }
    }
  });
})(jQuery);
