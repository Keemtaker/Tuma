class Job < ApplicationRecord
  belongs_to :company, optional: true
  has_many :applicants, dependent: :destroy
  has_many :job_perks
  has_many :perks, through: :job_perks, dependent: :destroy

  mount_uploader :unregistered_company_logo, LogoUploader
end
