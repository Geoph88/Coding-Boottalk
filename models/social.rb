def personal_posts
    run_sql("SELECT * FROM posts ORDER BY id DESC")
end

def all_posts
    run_sql("SELECT users.name, users.image_url AS user_name, posts.post, posts.feeling FROM posts INNER JOIN users ON users.id = posts.user_id")
end

def user_posts
    run_sql("SELECT * FROM posts WHERE user_id = $1" ,[current_user['id']])
end

def create_post(post, feeling, user_id)
    run_sql("INSERT INTO posts (post, feeling, user_id) VALUES($1, $2, $3)", [post, feeling, user_id])
end

def get_post(id)
    run_sql("SELECT * FROM posts WHERE id = $1", [id])[0]
end

def update_post(post, feeling, user_id)
    run_sql("UPDATE posts SET post = $1, feeling = $2 WHERE id = $3", [post, feeling, id])
end

def delete_post(id)
    run_sql("DELETE FROM posts WHERE id = $1", [id])
end

# SELECT users.name AS user_name, account.name, account.image_url, account.post FROM account INNER JOIN users ON users.id = account.user_id;