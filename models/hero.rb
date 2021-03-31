require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'mysql', database: 'crowsfoot.db')

class Hero < ActiveRecord::Base
  belongs_to :user
  has_one    :inventory
  has_one    :stats_bank
  has_one    :inventory
  has_many   :items, through: :inventory
end