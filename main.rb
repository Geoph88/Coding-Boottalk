require 'sinatra'
require 'pry'
require 'bcrypt'

enable :sessions

# linking the database ruby file
require './db/db'



# linking the controllers
require './controllers/sessions_controllers'
require './controllers/social_controllers'
require './controllers/users_controllers'

# linking the models
require './models/social'
require './models/user'

# helpers
require './helpers/sessions_helper'



get '/' do
  erb :index
end





