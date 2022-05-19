def personal_posts
    run_sql("SELECT * FROM account ORDER BY id")
end

def all_posts
    run_sql("SELECT users.name AS user_name, account.name, account.image_url, account.post FROM account INNER JOIN users ON users.id = account.user_id")
end

def user_posts
    run_sql("SELECT * FROM account WHERE user_id = $1" ,[current_user['id']])
end

def create_post(name, image_url, post, user_id)
    run_sql("INSERT INTO account(name, image_url, post, user_id) VALUES($1, $2, $3, $4)", [name, image_url, post, user_id])
end

def get_post(id)
    run_sql("SELECT * FROM account WHERE id = $1", [id])[0]
end

def update_post(name, image_url, post, id)
    run_sql("UPDATE account SET name = $1, image_url = $2, post = $3 WHERE id = $4", [name, image_url, post, id])
end

def delete_post(id)
    run_sql("DELETE FROM account WHERE id = $1", [id])
end

# SELECT users.name AS user_name, account.name, account.image_url, account.post FROM account INNER JOIN users ON users.id = account.user_id;