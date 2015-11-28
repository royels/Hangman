@Info = React.createClass
#  handleClick: () ->
  render: ->
    React.DOM.button
      className: 'info-button btn btn-danger'
      onClick: @handleClick
      @state.content
  getInitialState: ->
    content: @props.data
  getDefaultProps: ->
    content: []