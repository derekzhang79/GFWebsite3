class ApplicationController < ActionController::Base
  protect_from_forgery

  def submit_contact
    info = { :name => params[:name], :company => params[:company], :email => params[:email], :msg => params[:msg] }
    flash[:submitted] = true
    flash[:name] = params[:name]
    ContactMailer.contact_us(info).deliver
    redirect_to :action => 'contact'
  end

  def services
    flash[:hide_service_head] = true
  end

end
