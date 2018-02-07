class Applicant < ApplicationRecord
  after_create :send_confirmation_email

  belongs_to :job
  mount_uploader :resume, ResumeUploader


  private
  def send_confirmation_email
     ApplicantMailer.confirm(self).deliver_now
  end

  # def send_applicant_info
  #    ApplicantMailer.applicant_info.deliver_now
  # end
end
