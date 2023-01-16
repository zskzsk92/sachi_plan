class TaskList < ApplicationRecord
  belongs_to :user
  has_many :cards
 
  validates :title ,presence: true , length: { in: 1..30 }

end
