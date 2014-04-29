class Ui
  constructor: (options) ->
    @alternatives = options.alternatives
    @alternativeTpl = options.alternativeTpl
    @alternativesDiv = options.alternativesDiv
    options.playBtn.bind('click', this.play)

  submitAnswer: ->
    console.log('sending...')

  play: ->
    console.log('playing...')

  generateAlternativesHtml: ->
    alternativesHtmlArray = for alternative in @alternatives
      @alternativeTpl(value: alternative)
    alternativesHtmlArray.join(' ')

  render: ->
    alternativesHtml = this.generateAlternativesHtml()
    @alternativesDiv.html(alternativesHtml)
    @alternativesDiv.find('.alternative').bind('click', this.submitAnswer)
