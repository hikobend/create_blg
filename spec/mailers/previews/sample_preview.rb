# Preview all emails at http://localhost:3000/rails/mailers/sample
class SamplePreview < ActionMailer::Preview
  def welcome
    member = Member.new(name_sei: '菅田', name_mei: '将暉', email: 'suda@example.com')
    SampleMailer.welcome(member)
  end
  
  def welcome_db
    member = Member.first
    SampleMailer.welcome(member)
  end
end