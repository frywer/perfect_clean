class UserMailer < ApplicationMailer
  default from: 'perfect.notifier@gmail.com'

  def welcome_email(user) # deliver
    @user = user
    mail_to = Rails.env.development? ? 'marangoz.frywer@gmail.com' : 'perfectclean.srl@gmail.com'
    mail(to: mail_to, subject: '>>> PERFECT CLEAN new message.')
  end
end
