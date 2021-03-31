require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'mysql', database: 'crowsfoot.db')

class Item < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :hero, through: :inventory
end