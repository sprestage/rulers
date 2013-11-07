# Rulers

This is my implementation of a Ruby on Rulers framework.  It is primarily for instruction, but it works just fine as a web framework if you want a simple (but completely insecure!) one.


## Implementation

### Branch chapter_1

Implementing my own very basic version of Rails, called Rulers.  Creating just enough framework to run a rails server on.  This is a reusable Ruby library that is a gem.  This Rulers gem is then included in my sample application, best_quotes.

### Branch chapter_2

Implementing controllers.  Mmmmm, routing.

### Branch chapter_3

Played with regex to convert camel case to snake case.  Also, take a look at the 'rerun' gem for reloading your server automatically when files in your directory tree change...sadly no help when developing the rulers framework.

### Branch chapter_4

Here I implement a basic set of views with ERB support.


## Installation

Add this line to your application's Gemfile:

    gem 'rulers', :git => git@github.com:sprestagerulers.git

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rulers

For git gems, you'll need to run "bundle exec rackup" instead of just
"rackup".


## Usage

This framework is instructional and there are good reasons not to use
it unmodified in production.  Rails is a relatively secure framework,
but Rulers is not.

For further details, see the Rails security guides and/or chapter 10
of Rebuilding Rails.


## Contributing

No real need.  This is just an exercise for my own learning.


## Attributions

This exercise in learning was guided by the book "Rebuilding Rails" by Noah Gibbs.  You can find the canonical branch of this framework at "http://github.com/noahgibbs/rulers".


