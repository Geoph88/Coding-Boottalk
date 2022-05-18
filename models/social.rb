def all_posts
    run_sql("SELECT * FROM account ORDER BY id")
end

def create_post(name, image_url, post)
    run_sql("INSERT INTO account(name, image_url, post) VALUES($1, $2, $3)", [name, image_url, post])
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