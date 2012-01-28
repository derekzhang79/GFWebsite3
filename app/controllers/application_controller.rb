class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    info = { :email => 'test@test.com', :msg => 'Hello world!' }
    ContactMailer.contact_us(info).deliver
  end

  def submit_contact
    info = { :name => params[:name], :email => params[:email], :msg => params[:msg] }
    flash[:submitted] = true
    flash[:name] = params[:name]
    redirect_to :action => 'contact'
  end

end
