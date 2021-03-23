require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')

class Hero < ActiveRecord::Base
  belongs_to :user
end