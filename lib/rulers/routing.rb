module Rulers
  class Application
    def get_controller_and_action(env)
      # raise Exception, env.inspect  #dump the entire environment to look at it
      # puts "Rack environment: #{env.inspect}"  #dump the entire environment to look at it

      _, cont, action, after = env["PATH_INFO"].split('/', 4)
      cont = cont.capitalize # "People"
      cont += "Controller" # "PeopleController"
      # puts "Cont: #{cont}"

      [Object.const_get(cont), action]
    end
  end
end
