get '/user/sign_up' do
    erb :'users/new'
end

post '/create_user' do
    name = params['name']
    email = params['email']
    image_url = params['image_url']
    bootcamp = params['bootcamp']
    password = params['password']

    create_user(name, email, image_url, bootcamp, password)

    redirect '/'
end


get '/user/:user_id/other_user_page/' do
    
    user_id = params['user_id']

    social_posts = get_other_user_posts(user_id)

    erb :'/users/other_user_page', locals: {
        social_posts: social_posts
    }
end