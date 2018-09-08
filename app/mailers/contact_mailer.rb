class ContactMailer < ApplicationMailer
  def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body
      mail(to:'gersonrevattaf@gmail.com',from: email, subject: 'Contact Request')
  end
end
