class Link < ApplicationRecord
    belongs_to :user
    has_many :link_groups
    has_many :groups, through: :link_groups
    has_one_attached :image

    mount_uploader :image, ImageUploader

end
