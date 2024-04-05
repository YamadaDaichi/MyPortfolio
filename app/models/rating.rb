class Rating < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :class_type, presence: true
  validates :faculty, presence: true
  validates :department, presence: true
  validates :subject_name, presence: true
  validates :professor_name, presence: true
  validates :nickname, presence: true
  validates :body, presence: true, length: { in: 5..1000 }
  validates :exam_content, presence: true, length: { in: 5..1000 }

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
