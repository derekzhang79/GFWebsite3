class ContactMailer < ActionMailer::Base
  default :to => "contact@gndfloor.com"

  def contact_us(info)
    @info = info
    mail(:from => "null@hull.com", :subject => "Contact Form Submission")
  end
end
