class Banner < ApplicationRecord

  validates :title, presence: true
  has_one_attached :photo
end
