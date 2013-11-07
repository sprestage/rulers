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

### Branch chapter_5

I just implemented the model.  This is now officially an MVC framework.
Implementing models based on files instead of databases.  JSON files, in particular

PROBLEM: Things broke at the end of chapter 5.  I don't under stand quite why.  I used similar syntax in the little erubis example we did, so I though I understood it.  Here is the output when I try to start the server:

susanmaclaptop:best_quotes susan$ bundle exec rackup -p 3001
/Users/susan/Documents/myProjects/codefellows/rebuildingRails/rulers/lib/rulers/controller.rb:3:in `require': /Users/susan/Documents/myProjects/codefellows/rebuildingRails/rulers/lib/rulers/file_model.rb:65: can't find string "TEMPLATE" anywhere before EOF (SyntaxError)
/Users/susan/Documents/myProjects/codefellows/rebuildingRails/rulers/lib/rulers/file_model.rb:50: syntax error, unexpected end-of-input, expecting tSTRING_CONTENT or tSTRING_DBEG or tSTRING_DVAR or tSTRING_END
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/rulers/lib/rulers/controller.rb:3:in `<top (required)>'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/rulers/lib/rulers.rb:6:in `require'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/rulers/lib/rulers.rb:6:in `<top (required)>'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/best_quotes/config/application.rb:2:in `require'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/best_quotes/config/application.rb:2:in `<top (required)>'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/best_quotes/config.ru:1:in `require'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/best_quotes/config.ru:1:in `block in <main>'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/best_quotes/config.ru:in `new'
  from /Users/susan/Documents/myProjects/codefellows/rebuildingRails/best_quotes/config.ru:in `<main>'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/builder.rb:49:in `eval'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/builder.rb:49:in `new_from_string'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/builder.rb:40:in `parse_file'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/server.rb:277:in `build_app_and_options_from_config'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/server.rb:199:in `app'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/server.rb:314:in `wrapped_app'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/server.rb:250:in `start'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/lib/rack/server.rb:141:in `start'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/gems/rack-1.5.2/bin/rackup:4:in `<top (required)>'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/bin/rackup:23:in `load'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/bin/rackup:23:in `<main>'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/bin/ruby_executable_hooks:15:in `eval'
  from /Users/susan/.rvm/gems/ruby-2.0.0-p247/bin/ruby_executable_hooks:15:in `<main>'
susanmaclaptop:best_quotes susan$

### branch chapter 6


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


