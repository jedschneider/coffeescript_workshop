fillMeInWith = (str)->
  throw new Error ["make me pass with ", str].join(" ")

describe "variables", ->
  it "should allow basic assignment", ->
    foo = "foo"
    # expect(typeof foo).toEqual "string"

  it "should do assingment inline ", ->
    result = otherResult = 45 + 78
    
    expect(otherResult).toEqual fillMeInWith "the proper value"
    expect(result).toEqual 45 + 78

  it "should do assingment as a result of an expression", ->
    # coffeescript lacks a ternary operator
    result = if (2 + 2 == 5) then "math is broke" else "math works"
    
    expect(result).toEqual fillMeInWith("the correct string")

  it "should use variables with outside lexical scope", ->
    foo = "foo"
    callMe = ->
      expect(foo).toEqual "fizzle"

    callMe()

  it "should maintain scope within its functional context", ->
    callMe = ->
      foo = "foo"
    foo = "bar"
    # here is a good spot to introduce logging
    # console.log "foo is: ", foo
    callMe()

    expect(foo).toEqual fillMeInWith("a string")

  describe "splats", ->
    it "should handle a variable number of arguments", ->
      materials = ["wheat", "salami", "cheese", "lettuce"]
      # this is also an example of array pattern matching
      [bread, meat, ingredients...] = materials
      expect(bread).toEqual "wheat"
      expect(meat).toEqual fillMeInWith("a meat")
      expect(ingredients.join(", and ")).toEqual fillMeInWith("the other ingredients")
    
  describe "more pattern matching", ->
    it "swaps assingments", ->
      red = "red"
      blue = "blue"
      [blue, red] = [red, blue]
      expect(red).toEqual fillMeInWith("the right color")
      expect(blue).toEqual "red"
      
    it "should be awesome in regex pattern matching", ->
      regex = ///
        (\d{3})  # area code
        -(\d{3}) # local
        -(\d{4}) # last_4
        ///
      [match, area_code, local, last_4] = "555-867-5309".match regex
      expect("#{local}-#{last_4}").toEqual fillMeInWith("Jenny's phone number")
  
  describe "ranges", ->
    it "should slice an array", ->
      arr = ["fe", "fi", "fo", "fum"]
      expect(arr[1..2]).toEqual fillMeInWith("the right subarray")
      
    it "should let me count", ->
      double = (x)-> x * 2
      expect(double num for num in [1..4]).toEqual [2, 4]
    