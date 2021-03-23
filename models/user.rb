require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')

class User < ActiveRecord::Base
  has_one :hero
end