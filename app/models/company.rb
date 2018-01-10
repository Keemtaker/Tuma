class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy
  mount_uploader :photo, PhotoUploader

end
