class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy
  has_many :company_perks, dependent: :destroy
  has_many :perks, through: :company_perks, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
