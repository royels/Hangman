@Buttons = React.createClass
  render: ->
    React.DOM.div
      className: 'button-div col-md-6'
      React.DOM.p null, 'Here is the selection of characters:'
      for letter in @state.letters
        React.createElement Button, letter: letter
  getInitialState: ->
    letters: @props.data
  getDefaultProps: ->
    letters: []
