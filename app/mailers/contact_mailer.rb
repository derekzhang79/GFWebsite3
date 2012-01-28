class ContactMailer < ActionMailer::Base
  default :to => 'contact@gndfloor.com'
  def contact_us(info)
    @info = info
    mail(:from => info[:email], :subject => "Contact Form Submission")
  end
end
