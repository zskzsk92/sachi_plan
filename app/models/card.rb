class Card < ApplicationRecord
   belongs_to :task_list
   has_one_attached :image

   validates :content , presence: true
   validates :memo , length: { maximum: 1000 }

end
