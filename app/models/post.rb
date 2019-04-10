class Post < ApplicationRecord
  belongs_to :user
  validate :image_presence

  has_one_attached :image

  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end
end
