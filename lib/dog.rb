require "active_record"

# setup a database connection

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database:"db/test.sqlite"
)

# create a test table

sql = <<-SQL
CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT
)
SQL



class Dog < ActiveRecord::Base
end
