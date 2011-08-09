require 'sinatra/base'
require 'coffee_script'

module Colors
  class App < Sinatra::Base
    configure(:development) do
      require 'sinatra/reloader'
      register Sinatra::Reloader
      also_reload "lib/**/*.rb"
    end

    get '/env' do
      p request.env
      request.env.inspect
    end

    get '/' do
      haml :index
    end

    get '/app.js' do
      coffee :app
    end

    get '/app.css' do
      scss :app
    end

    get '/hex' do
      '%02X' % rand(256)
    end
  end
end

