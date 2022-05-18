get '/' do
    social_posts = all_posts()

    erb :'social/index', locals: {
        social_posts: social_posts
    }
end

get '/social/new' do
    erb :'social/new'
end

post '/social' do
    name = params['name']
    image_url = params['image_url']
    post = params['post']

    create_post(name, image_url, post)

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
    id = params['id']
    name = params['name']
    image_url = params['image_url']
    post = params['post']

    update_post(name, image_url, post, id)
  
    redirect '/'
end


delete '/social/:id' do
    id = params['id']

    delete_post(id)

    redirect '/'
end

