require_relative '../mailers/invite_mailer'
require_relative '../controllers/mail_controller'
require 'dotenv'
Dotenv.load

class InviteMailer < ApplicationMailer

	def invite_mail(user)
    mail = Mailjet::Send.create(
    # mail(
      from_email: Rails.application.secrets.secret_mail,
      recipients: [{email: user}],
      subject: "The Hacking project !",
      text_part: "Bonjour, connaissez-vous the Hacking project ? Une formation de developpement web totalement gratuite, qui vous sera surement très utile !
      Venez sur:    pour en savoir plus. "
     )
    p mail.attributes['Sent']

  end

end