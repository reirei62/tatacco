class Board < ApplicationRecord
  has_many :introductions
  belongs_to :user,optional: true

  
end
