class Card < ActiveRecord::Base
  attr_accessible :title
  has_many :messages
end
