class Job < ApplicationRecord
  belongs_to :company, optional: true
  has_many :applicants, dependent: :destroy
  mount_uploader :unregistered_company_logo, LogoUploader
end
