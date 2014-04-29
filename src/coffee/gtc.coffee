alternativeJST = "<button class='alternative' value=<%=value%>>
                    <%= value %>
                  </button>"
ui_options =
  playBtn: $('#play')
  alternativesDiv: $('#alternatives')
  alternatives: ['A', 'B', 'C']
  alternativeTpl: _.template(alternativeJST)

ui = new Ui(ui_options)
ui.render()
ui.play() # auto play when started
