get '/user/sign_up' do
    erb :'users/new'
end

post '/create_user' do
    name = params['name']
    email = params['email']
    image_url = params['image_url']
    bootcamp = params['bootcamp']
    password = params['password']

    users = find_user_by_email(email)

    if users == nil

        create_user(name, email, image_url, bootcamp, password)

        redirect '/'
    else
        redirect '/users/email_exists'
    end
end

get '/users/email_exists' do
    erb :'users/email_exists'
end

get '/user/:user_id/other_user_page/' do

    user_id = params['user_id']
    social_posts = get_user_by_id(user_id)

    erb :'users/other_user_page', locals: {
        social_posts: social_posts
    }
end