require 'sinatra'

def add_to_list(url)
    File.open('videolist.vl', 'a') { |f|
        f.puts url
    }
end

get '/' do
    # "at the sound of the gong, the time will be #{Time.now}."
    #erb :index, :locals => {:vid_src => 'http://www.youtube.com/embed/QBNIvqXmdKk'}
    #@vid_src = 'http://www.youtube.com/embed/QBNIvqXmdKk'
    #@vid_src = params[:url] if params[:url]
    erb :index
end

post '/' do
    url = params[:url]
    m = url.match(/watch\?v=(?<id>.+)/)
    #puts m[:id]
    @id = m[:id]
    @vidurl = 'http://www.youtube.com/embed/' + @id
    erb :confirm
end

post '/confirm/:id' do
    id = params[:id]
    if id
        add_to_list(id)
        'Your video was added to the queue'
    else
        'No video to add'
    end
end
