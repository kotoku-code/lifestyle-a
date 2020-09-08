class Group < ApplicationRecord
  belongs_to :user
  has_many :link_groups
  has_many :links, through: :link_groups
end
