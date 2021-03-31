require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'mysql', database: 'crowsfoot.db')

class User < ActiveRecord::Base
end