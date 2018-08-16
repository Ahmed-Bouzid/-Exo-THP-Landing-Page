require_relative '../controllers/homes_controller'
require 'dotenv'
Dotenv.load

class UserMailer < ApplicationMailer

	def welcome_mail(user)
    mail = Mailjet::Send.create(
    # mail(
      from_email: Rails.application.secrets.secret_mail,
      recipients: [{email: user}],
      subject: "The Hacking project newsletter !",
      text_part: "Bonjour voici ta newsletter... Oui elle ne sert à rien seulement à tester notre application. ;) "
     )
    p mail.attributes['Sent']

  end

end