class Post < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :author_id, presence: true

  belongs_to :author_id, class_name: "User", foreign_key: "author_id"

  # scope :with_juice, -> { where("juice > 0") }

  scope :latest_posts, -> { order(created_at: :desc).limit(3) }
  scope :same_author, -> (author_id) { where(author_id: author_id) }
end
