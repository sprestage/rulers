# rulers/lib/rulers.rb
require "rulers/version"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"
require "rulers/file_model"

module Rulers
  class Application

    def call(env)
      # if env['PATH_INFO'] == '/'
      #   # redirect to /quotes/a_quote"
      # end


      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end

      # klass, act = get_controller_and_action(env)
      # controller = klass.new(env)

      begin
        klass, act = get_controller_and_action(env)
        controller = klass.new(env)
      rescue LoadError => e
        # puts "Whoops, I meant to do that error: #{e}"
        [200, {'Content-Type' => 'text/html'}, [e.to_s]]
      end

      text = controller.send(act)

      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end

    # def self.to_underscore(string)
    #   my_string = string.gsub(/::/, File::SEPARATOR).
    #     gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
    #     gsub(/([a-z]\d)([A-Z])/, '\1_\2').

    # end

end
