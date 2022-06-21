class SampleMailer < ApplicationMailer
  def welcome(member)
    @member = member
    mail to: @member.email, subject: 'Sample mailer'
  end
end