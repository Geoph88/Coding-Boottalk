def create_user(name, email, image_url, bootcamp, password)

    password_digest = BCrypt::Password.create(password)

    run_sql("INSERT INTO users(name, email, image_url, bootcamp, password_digest) VALUES($1, $2, $3, $4, $5)", [name, email, image_url, bootcamp,password_digest])
end

def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1", [email])

    if users.to_a.count > 0
        users[0]
    else
        nil
    end
end

def find_user_by_id(id)
    run_sql("SELECT * FROM users WHERE id = $1", [id])[0]
end

def get_user_by_name(name)
    run_sql("Select * FROM users WHERE name = $1", [name])
end

def get_user_by_id(user_id)
    run_sql("SELECT users.bootcamp, users.image_url, users.name, posts.user_id AS user_id, posts.post, posts.feeling, posts.time_and_date FROM posts INNER JOIN users ON users.id = posts.user_id WHERE user_id = $1 ORDER BY posts.id DESC", [user_id])
end

def update_user_details(name, image_url, id)
    run_sql("UPDATE users SET name = $1, image_url = $2 WHERE id = $3", [name,image_url, id])
end