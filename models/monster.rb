require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'mysql', database: 'crowsfoot.db')

class Monster < ActiveRecord::Base
end