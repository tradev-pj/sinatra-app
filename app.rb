require 'sinatra'
require 'slim'

# start this app by "ruby app.rb"
set :port, 5000

get '/' do
	slim :index
end

get '/hi' do
	"Hello World!"
end

get '/dog' do
	"My cute dog"
end

get '/dog/:id' do
	"This is dog #{params[:id]}"
end

helpers do
	def some_reusable_code(name)
	end
end

# start this RackApp by "rack", which runs config.ru
class RackApp < Sinatra::Base

	get '/' do
		puts settings.run
		erb :index
	end

	get '/hi' do
	  "Hello World!"
	end

	get '/dog' do
		"My cute dog"
	end

	get '/dog/:id' do
		"This is dog #{params[:id]}"
	end

	helpers do
		def some_reusable_code(name)
		end
	end

end