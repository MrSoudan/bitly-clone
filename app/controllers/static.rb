# require 'byebug'
get '/' do
  erb :"static/index"
end

 get '/hello/:name' do
  'Hello, ' + params[:name]
 end

 post '/url' do 
 	@url = Url.create(long_url: params[:long_url])
 	@url.shorten
 	# byebug
 	@url.save
 	erb :"static/index"
 end


get '/:short_url' do
	# byebug
	@url = Url.find_by short_url: params[:short_url]
	redirect "http://" + @url.long_url
	byebug
	
end

get '/' do 
	puts "[LOG] Getting/"
	puts "[LOG] params: #{params.inspect}"
	erb :index
end 






