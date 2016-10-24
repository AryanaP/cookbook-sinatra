require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"


set :bind, '0.0.0.0'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end
# @repository = Repository.new
# @controller = Controller.new(@repository)

get '/' do
  erb :about
end

get '/cupcakes' do
  erb :cupakes
end

get '/' do
  @controller.list
  @usernames = [ 'ssaunier', 'Papillard' ]
  erb :index
end

get '/create' do
  @controller.create
end
