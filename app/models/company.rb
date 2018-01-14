class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy
  has_many :company_perks
  has_many :perks, through: :company_perks
  mount_uploader :photo, PhotoUploader
end
