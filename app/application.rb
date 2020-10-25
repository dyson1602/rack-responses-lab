require 'pry'

class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.now
        values = time.to_a
        
        if values[2] < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        # binding.pry
        resp.finish
    end



end #Application