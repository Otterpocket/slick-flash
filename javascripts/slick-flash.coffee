class SlickFlash

  warning: (msg) ->
    container = $ '<div>'
    content = $ '<div>'
    msg_type = $ '<span>'
    msg_body = $ '<span>'
    line = $ '<div>'

    msg_type.text('Warning')
    msg_body.text(msg)

    container.addClass "slick-flash warning"
    content.addClass "message-content"
    msg_type.addClass 'message-type'
    msg_body.addClass 'message-body'
    line.addClass 'line'

    content.appendTo(container)
    msg_type.appendTo(content)
    msg_body.appendTo(content)
    line.appendTo(container)

    $( "body" ).append(container);


  information: (msg) ->
    console.log 'INFOINFOIFO'

  good: (msg) ->
    console.log 'YEP GOOD'

  bad: (msg) ->
    console.log 'BABDS'

(($) ->
  $.extend slickFlash: (msg_type, msg) ->
    sf = new SlickFlash
    switch msg_type
      when 'warning' then sf.warning(msg)
      when 'information' then sf.warning(msg)
      when 'good' then sf.warning(msg)
      when 'bad' then sf.warning(msg)


) jQuery
