class Job < ApplicationRecord
  belongs_to :company
  has_many :applicants, dependent: :destroy
end
