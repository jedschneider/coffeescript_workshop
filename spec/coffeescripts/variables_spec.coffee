fillMeInWith = (str)->
  throw new Error ["make me pass with ", str].join(" ")

describe "variables", ->
  it "should allow basic assignment", ->
    foo = "foo"

    expect(typeof foo).toEqual "number"

  it "should do assingment inline ", ->
    result = otherResult = 45 + 78

    expect(otherResult).toEqual 45 + 78
    expect(result).toEqual fillMeInWith "an inline assignment"

  it "should do assingment as a result of an expression", ->
    result = if (2 + 2 == 5) then "math is broke" else "math works"

    expect(result).toEqual fillMeInWith "the result of the expression"

  it "should use variables with outside lexical scope", ->
    foo = "foo"
    callMe = ->
      expect(foo).toEqual  fillMeInWith "a string"

    callMe()

  it "should maintain scope within its functional context", ->
    callMe = ->
      foo = "foo"
    foo = "bar"
    # here is a good spot to introduce logging
    # console.log "foo is: ", foo
    callMe()

    expect(foo).toEqual fillMeInWith "the right string"

  describe "splats", ->
    it "should handle a variable number of arguments", ->
      materials = ["wheat", "salami", "cheese", "lettuce"]
      [bread, meat, ingredients...] = materials
      expect(bread).toEqual "wheat"
      expect(meat).toEqual fillMeInWith "the right answer"
      expect(ingredients.join(", and")).toEqual "the other answer"
  
  describe "ranges", ->
    it "should slice an array", ->
      arr = ["fe", "fi", "fo", "fum"]
      expect(arr[1..2]).toEqual fillMeInWith "the subarray"
      
    it "should let me count", ->
      double = (x)-> x * 2
      expect(double num for num in [1..4]).toEqual [2, 4]
      
  describe "fat arrows", ->
    
  describe "@", ->
    