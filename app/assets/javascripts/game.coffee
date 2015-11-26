`
var buttons = document.getElementsByClassName("possible-guess");
for(var i = 0; i < buttons.length; i++) {
  buttons[i].onclick = get_new_words;
}

function get_new_words() {
    var that = this;
    console.log('funk');
    $.get( "/api/guess", {letter: that.innerHTML}).done(function( data ) {
            console.log( JSON.stringify(data) );
    });
}
`