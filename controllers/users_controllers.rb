get '/sign_up' do
    erb :'users/new'
end

post '/create_user' do
    name = params['name']
    email = params['email']
    image_url = params['image_url']
    bootcamp = params['bootcamp']
    password = params['password']

    create_user(name, email, password)

    redirect '/'
end