class SlickFlash

  constructor: ->
    $('.slick-flash').remove()

  warning: (msg) ->
    console.log 'warn'
    genrate_html('warning', msg)

  information: (msg) ->
    console.log 'info'
    genrate_html('information', msg)

  good: (msg) ->
    genrate_html('good', msg)

  bad: (msg) ->
    genrate_html('bad', msg)

  genrate_html = (type, msg) ->
    container = $ '<div>'
    content = $ '<div>'
    msg_type = $ '<span>'
    msg_body = $ '<span>'
    line = $ '<div>'

    msg_type.text(type)
    msg_body.text(msg)

    container.addClass "slick-flash"
    container.addClass type
    content.addClass "message-content"
    msg_type.addClass 'message-type'
    msg_body.addClass 'message-body'
    line.addClass 'line'

    content.appendTo(container)
    msg_type.appendTo(content)
    msg_body.appendTo(content)
    line.appendTo(container)

    $( "body" ).append(container);

(($) ->
  $.extend slickFlash: (msg_type, msg) ->
    sf = new SlickFlash
    switch msg_type
      when 'warning' then sf.warning(msg)
      when 'information' then sf.information(msg)
      when 'good' then sf.good(msg)
      when 'bad' then sf.bad(msg)
) jQuery
