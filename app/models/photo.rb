class Photo < ApplicationRecord
  belongs_to :room
  has_many :photos

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  validates_with AttachmentContentTypeValidator, attributes: :image, content_type: /\Aimage\/.*\z/

end
