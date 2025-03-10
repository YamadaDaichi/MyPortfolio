class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ratings, dependent: :destroy
  attachment :profile_image
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :name, presence: true
end
