class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy
  has_many :company_perks
  has_many :perks, through: :company_perks, dependent: :destroy
  has_many :company_industries
  has_many :industries, through: :company_industries, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  mount_uploader :logo, LogoUploader
end
