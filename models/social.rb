def personal_posts
    run_sql("SELECT * FROM posts ORDER BY id DESC")
end

def all_posts
    run_sql("SELECT users.bootcamp, users.image_url, users.name, posts.user_id AS user_id, posts.post, posts.feeling, posts.time_and_date FROM posts INNER JOIN users ON users.id = posts.user_id ORDER BY posts.id DESC")
end

def user_posts
    run_sql("SELECT * FROM posts WHERE user_id = $1 ORDER BY id DESC" ,[current_user['id']])
end

def create_post(post, feeling, time_and_date, user_id)
    run_sql("INSERT INTO posts (post, feeling, time_and_date, user_id) VALUES($1, $2, $3, $4)", [post, feeling, time_and_date, user_id])
end

def get_post(id)
    run_sql("SELECT * FROM posts WHERE id = $1", [id])[0]
end

def update_post(post, feeling, id)
    run_sql("UPDATE posts SET post = $1, feeling = $2 WHERE id = $3", [post, feeling, id])
end

def delete_post(id)
    run_sql("DELETE FROM posts WHERE id = $1", [id])
end