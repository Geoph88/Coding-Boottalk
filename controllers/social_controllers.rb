get '/' do

    social_posts = all_posts()

    erb :'social/index', locals: {
        social_posts: social_posts
    }
end

get '/social/new' do
    erb :'social/new'
end

get '/social/user_page' do
    if logged_in?
    personal_posts = user_posts()

    erb :'social/user_page', locals: {
        personal_posts: personal_posts
    }
    end
end

post '/social' do
    post = params['post']
    feeling = params['feeling']
    user_id = current_user['id']

    create_post(post, feeling, user_id)

    redirect '/'
end

get '/social/:id/edit' do
    id = params['id']

    posts = get_post(id)

    erb :'social/edit', locals: {
        posts: posts
    }
end

put '/social/:id' do

    post = params['post']
    feeling = params['feeling']

    update_post(post, feeling)
  
    redirect '/'
end


delete '/social/:id' do
    id = params['id']

    delete_post(id)

    redirect '/'
end

