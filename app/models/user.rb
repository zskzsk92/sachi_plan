class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :task_lists

  validates :nickname ,presence: true ,length: { maximum: 10 }
  validates :birthday,presence: true
end
