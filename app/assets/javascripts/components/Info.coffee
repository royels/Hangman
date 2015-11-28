@Info = React.createClass
#  handleClick: () ->
  render: ->
    React.DOM.button
      className: 'info-button btn-lg btn btn-danger'
      'data-placement': 'top'
      type: 'button'
      title: 'Guesses'
      'data-toggle': "popover"
      'data-content': ""
      tabindex: "0"
      'data-html': 'true'
      'data-trigger': 'focus'
      @state.content
  getInitialState: ->
    content: @props.data
  getDefaultProps: ->
    content: []
  componentDidMount: ->
    $( ->
      $('[data-toggle="popover"]').popover()
      return
    )