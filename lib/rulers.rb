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
      if controller.get_response
        st, hd, rs = controller.get_response.to_a
        [st, hd, [rs.body].flatten]
      else
        [200, {'Content-Type' => 'text/html'}, [text]]
      end
    end

  end
end
