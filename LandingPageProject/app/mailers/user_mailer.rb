class UserMailer < ApplicationMailer

  default from: 'ahmahm@hotmail.co.jp'

  def welcome_email
    mail(to:'iatrou.thomas@gmail.com', subject: 'Et si tu apprenais à coder pour changer de vie ?')
  end

end