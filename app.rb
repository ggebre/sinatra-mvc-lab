require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    
    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        text_input = params[:user_phrase]
        @piglatin = PigLatinizer.new.piglatinize(text_input)
        erb :pig_analyzer
    end
end