describe "working with jQuery", ->
  # setup and tear down
  # need to have some html to play with
  beforeEach ->
    $(@).append '<div id="test"><p>some text</p></div>'

  afterEach ->
    $('#test').remove()

  describe "a click event", ->
      # usually better not to cache the value
      # this is != to p = $('#test p')
      p = -> $('#test p')

    it "should change the text color and content", ->
      # normally this would be a jquery function in your src;
      # we would normally just setup the html and
      # issue the event. I added here for simplicity.
      $("test p").click (e)->
        color = 'red'
        $(@).attr('color', color)
        $(@).html("now I'm #{color}")
      
      # runs and waits blocks are a way in Jasmine to asynchronously
      # deal with changes to the dom or ajax requests.
      # We have to assume that manipulating the dom will not
      # be instantaneous so should handle it with runs and waits.
      runs ->
        # we want to be certain that our html is in a vaild
        # start state
        expect(p()).not.toHaveAttr 'color', 'red'
        p().click()
      # waitsFor repeatedly calls a predacate function for a given time interval
      # if the function is still false after the time interval the test fails.
      waitsFor((-> p().attr('color') == 'red'), 100, "color isn't red")

      # alternatively you can use the waits function to just wait a specfic amount of time
      # waits 100

      # its seems better to end with a runs block that makes an assertion
      # even if that assertion is basically what is in your waitsFor
      # to prevent false positives.
      runs ->
        expect(p()).toHaveText /red/
        