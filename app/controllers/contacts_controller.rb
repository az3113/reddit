# ContactsController
class ContactsController < ApplicationController
  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:message]
    ContactMailer.contact_email(name, email, body).deliver
    redirect_to root_path, notice: 'Message sent'
  end
end
