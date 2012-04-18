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
# CoffeeScript Adoption #

!SLIDE bullets incremental
# CoffeeScript Adoption #

* Quick and Enthusiastic
  * adopted as a first class language in Rails 3.1
* Not all positive: [A case against CoffeeScript](http://ryanflorence.com/2011/2012/case-against-coffeescript/)
* Rhetorical Response: [A case for CoffeeScript](http://www.codethinked.com/a-case-for-using-coffeescript)
* Reflective: "It's Just JavaScript"
  * [CoffeeScript is for Closers](http://userinexperience.com/?p=732)
  * **The rise of 'Build Your Own JavaScript'** [Jeremy Ashkenas](http://www.infoq.com/presentations/CoffeeScript)

!SLIDE incremental bullets
# CoffeeScript is only part of the solution #
  * debugging is less of an issue with TDD (Test Driven Development)
  * comprehension is augmented with other libraries that are more declarative (underscore.js, _eg_)

!SLIDE code
# Alternative Comprehensions

      @@@ coffeescript
      list = [{foo : "bar"}, {foo : "baz"}]
      
      # built in comprehension 
      item["foo"] for item in list #=> ["bar", "baz"]
      
      # underscore
      # _.map(list, iterator, [context])
      _.map list, (item)-> item["foo"]
      
      # or maybe
      _.map list, (item)-> _.pick(item, 'foo')

!SLIDE bullets

# Resources #

* css : [railslove](http://github.com/railslove)