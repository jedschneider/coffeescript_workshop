Converge SE CoffeeScript Workshop
=================================

These are the required files to participate in the CoffeeScript Workshop being presented by Jed Schneider at the 2012 Edition of [Converge SE](http://convergese.com).

Pre-Requisites:
---------------
1. the java runtime (test your machine by running `java -version`)
2. a modern browser with debugger (I will be using Chrome)

Getting Started:
----------------
1. Clone this repo with git or download the most recent release (I will provide a zip package download link before the conference in case you don't have git installed).
2. change into the directory
3. run `java -jar instant-coffee-0.0.5-standalone.jar watch`
4. to edit: open the project in your favorite text editor.
5. to run the specs, open SpecRunner.html in your browser.

A little longer intro:
----------------------
The idea of this workshop is to lead you through some of the features and interesting parts of CoffeeScript though a series of small code snippets that need to be implemented in order to pass a pre-written piece of test code. So, in effect, we will be doing some very light Test Driven Development, but no previous knowledge of the process is required to participate. There maybe several ways to implement the code with some solutions being more idiomatic CoffeeScript than others, which I intend to explain. I am taking direct influence from the [Ruby Koans](http://rubykoans.com/) project.

For the CoffeeScript compiler we will be using [InstantCoffee](https://github.com/fredericksgary/instant-coffee), a compiler that runs on the JVM, providing a cross-platform and low dependency solution for this workshop. This is the compiler we are using in-house for CoffeeScript work largely because myself and one other developer built it, but also because it is a nice solution for javascript that is targeted at the client (web browser). For your own work I encourage you to spend some time learning what toolchain fits your needs best. This workshop is more about the features and syntax of the language and much less about how it fits into the overall needs of your organization.