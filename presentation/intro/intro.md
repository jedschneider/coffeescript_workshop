!SLIDE title
# CoffeeScript #
DIY JavaScript

!SLIDE bullets
# Agenda #

* Intro to CoffeeScript
* Workflow (writing and compiling)
* Features of the Language
* Working with External Libraries (underscore.js, jQuery)

.notes who is using CS? what is the comfort level with JS?

!SLIDE commandline smaller
## Trying CoffeeScript - Hacker's Quickstart ##

# Language Play #

> [coffeescript.org](http://coffeescript.org)

# Workshop Materials #
> [https://github.com/jedschneider/coffeescript_workshop](https://github.com/jedschneider/coffeescript_workshop)

    $ git clone git://github.com/jedschneider/coffeescript_workshop.git
    
    $ cd coffeescript_workshop
    
    $ java -jar instant-coffee-0.0.5-standalone.jar watch

!SLIDE subsection

# About Me #

!SLIDE bullets

# Jed Schneider #
* Office of Biomedical Informatics Systems, Medical University of SC
* Health Sciences South Carolina
* Build Applications for Clinical Trial Research and Data Warehousing 
  * Ruby, Rails, CoffeeScript, Clojure, CouchDB, mySQL

!SLIDE bullets incremental
# My work with CoffeeScript #
* Part of a larger architectural shift
  * moving towards richer clients
  * emphasis on data and functions
  * composite systems and languages

* ~10 months of 'full time' experience

!SLIDE commandline
# My work with CoffeeScript #

Jasmine Specs

    $ find spec -name *.coffee | xargs wc -l
      ... 8169 total

Source Code

    $ find src -name *.coffee | -xargs wc -l
      ... 5386 total

!SLIDE subsection
# CoffeeScript Adoption #

!SLIDE bullets incremental
# CoffeeScript Adoption #

* Quick and Enthusiastic
  * adopted as a first class language in Rails 3.1
* Not all positive : [A case against CoffeeScript](http://ryanflorence.com/2011/2012/case-against-coffeescript/)
* Rhetorical Response [A case for CoffeeScript](http://www.codethinked.com/a-case-for-using-coffeescript)
* Dialectic - It's Just JavaScript
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
      # _.map(list, iterator, context)
      _.map(list, (item)-> item["foo"])
      
      # or maybe
      _.map(list, (item)->
        _.pick(item, 'foo'))

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

# Compare to Original JavaScript
    @@@ javascript
    describe("Jasmine", function() {
      return it("makes testing JS awesome!",
        function() {
          return expect(yourCode).toBeLotsBetter();
        });
    });

!SLIDE bullets

# Resources #

* css : [railslove](http://github.com/railslove)