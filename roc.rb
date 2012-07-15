require 'sinatra'

set :bind, '50.116.52.79'
set :port, '1234'

get '/' do
    # "at the sound of the gong, the time will be #{Time.now}."
    erb :index, :locals => {:vid_src => 'http://www.youtube.com/embed/QBNIvqXmdKk'}
end

