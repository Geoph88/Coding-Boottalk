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

def get_other_user_posts(user_id)
    run_sql("SELECT * FROM posts WHERE user_id = $1", [user_id])
end

def get_other_user_information(name, bootcamp, image_url, id)
    run_sql("SELECT name = $1, bootcamp = $2, image_url = $3, FROM users WHERE id = $4", [name, bootcamp, image_url, id])
end