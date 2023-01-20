class TaskList < ApplicationRecord
  belongs_to :user
  has_many :cards , dependent: :destroy
 
  validates :title ,presence: true , length: { maximum: 30 }

end
