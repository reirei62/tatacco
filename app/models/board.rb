class Board < ApplicationRecord
  has_many :introductions
  belongs_to :user,optional: true
  validates  :users_id ,uniqueness: true

  
end
