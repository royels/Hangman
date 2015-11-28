@Button = React.createClass
  handleGet: () ->
    letter_val = @props.letter
    $.ajax
      method: 'GET'
      url: '/api/guess'
      dataType: 'JSON'
      data:
        letter: letter_val
      success: (data) =>
        $('#pattern').html(data.pattern)
        $('[data-toggle="popover"]').
        attr('data-content',
          'Guesses remaining: ' + data.guesscount +
          "<br/>" +
          "Guesses made: " + data.guesslist
        )
        if data.guesscount == 0 then window.location.replace "/end"
        return
  render: ->
    React.DOM.button
      className: "possible-guess guess-btn btn btn-info"
      onClick: @handleGet
      @props.letter