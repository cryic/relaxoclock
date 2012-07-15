require 'sinatra'

get '/' do
    # "at the sound of the gong, the time will be #{Time.now}."
    #erb :index, :locals => {:vid_src => 'http://www.youtube.com/embed/QBNIvqXmdKk'}
#    @vid_src = 'http://www.youtube.com/embed/QBNIvqXmdKk'
    @vid_src = ''
    erb :index
end

