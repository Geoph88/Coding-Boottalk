require 'pg'

def run_sql(sql, params=[])
    db = PG.connect(dbname: 'cb_media')
    data = db.exec_params(sql, params)
    db.close
    data
  end