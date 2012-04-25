!SLIDE subsection
# understanding the dialect

!SLIDE code
# Start with Javascript
    @@@ javascript
    //describe("docstring", f)
    //it("docstring", f)

    describe("Jasmine", function() {
      return it("makes testing JS awesome!",
        function() {
          return expect(yourCode).toBeLotsBetter();
        });
    });

!SLIDE code
# Remove function and returns
    @@@ javascript
    describe("Jasmine", -> {
      it("makes testing JS awesome!", -> {
        expect(yourCode).toBeLotsBetter();
      });
    });

!SLIDE code
# Remove braces, semicolons, and parentheses
    @@@ coffeescript
    describe "Jasmine", ->
      it "makes testing JS awesome!", ->
        expect(yourCode).toBeLotsBetter()

!SLIDE code
# Compare to Original JavaScript
coffeescript
    @@@ coffeescript
    describe "Jasmine", ->
      it "makes testing JS awesome!", ->
        expect(yourCode).toBeLotsBetter()

original 
    @@@ javascript
    describe("Jasmine", function() {
      return it("makes testing JS awesome!",
        function() {
          return expect(yourCode).toBeLotsBetter();
        });
    });

!SLIDE subsection
# Design Patterns
> "The usefulness of speaking of patterns is to have a common terminology for discussing the situations designers already see over and over."

> -wikipedia.org (design patterns)

!SLIDE code
# remember when this felt weird?
    @@@javascript
    $(document).ready( function(){
      $("#content p").addClass("simple")
    });

!SLIDE bullets incremental
# Design (Language, API, Patterns)
  * give up explicit control in favor of declaration and abstraction
  * abstractions that are composable
  * abstractions that provide a more common interface (think icons or traffic signals)

example:
     @@@javascript
     $(document).ready( function(){
       $("#content p").addClass("simple")
     });

!SLIDE bullets incremental
# CoffeeScript is just JavaScript
* the next level of abstraction
* solving basic problems in JavaScript (generalized from jQuery) and extends functionality
* mitigate inherent problems with JavaScript [JavaScript: The Good Parts by Douglas Crockford](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742/ref=sr_1_1?ie=UTF8&qid=1335356270&sr=8-1)
* but the process is in reach
* `javascript <=> coffeescript <=> google closure <=> dart and clojurescript`

!SLIDE subsection
# Looping as an example of language extension

!SLIDE execute
# Basic JavaScript
    @@@javascript
    arr= [0,1,2,3,4]
    otherArr = []
    for(i=0; i<arr.length; i++){
      otherArr[i] = arr[i] + 1;
    }
    // => 5
    console.log(otherArr); // => [1, 2, 3, 4, 5]

!SLIDE execute
# First Step: Use An API
    @@@javascript
    arr= [0,1,2,3,4]
    otherArr = []
    $.each(arr, function(i){
      otherArr[i] = arr[i] + 1;
    })
    //=> [0,1,2,3,4]
    console.log(otherArr); // => [1, 2, 3, 4, 5]
    console.log(arr);

!SLIDE execute
# Second Step: Make the Language Better
same loop in coffeescript
    @@@coffeescript
    arr = [0..4] #=> [0,1,2,3,4]
    otherArr = (a + 1 for a in arr) #=> [1,2,3,4,5]
    addOne = (x)-> x + 1
    console.log arr,
                otherArr,
                (addOne(a) for a in otherArr)
    #=> [0,1,2,3,4], [1,2,3,4,5], [2,3,4,5,6]