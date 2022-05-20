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
    id = params['id']
    user_id = params['user_id']
    

    other_user_information = get_user_by_id(user_id)

    # counter = 0

    social_posts = get_other_user_posts(user_id) 


    erb :'users/other_user_page', locals: {
        
        other_user_information: other_user_information,

        social_posts: social_posts

        # counter: 0

    }
end