class Job < ApplicationRecord
  belongs_to :company, optional: true
  has_many :applicants, dependent: :destroy
end
