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
        console.log(data)
  render: ->
    React.DOM.button
      className: "possible-guess guess-btn btn btn-info"
      onClick: @handleGet
      @props.letter