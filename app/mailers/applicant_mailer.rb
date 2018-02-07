class ApplicantMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.applicant_mailer.confirm.subject
  #
  def confirm(applicant)
    @applicant = applicant
    mail(to: @applicant.email, subject: 'Job Application')
  end

  # def applicant_info(applicant)
  #   @applicant = applicant
  #   mail(to: @applicant.job.email, subject: 'Applicant Details')
  # end


end
