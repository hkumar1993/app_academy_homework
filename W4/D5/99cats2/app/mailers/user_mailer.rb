class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    # bye
    @user = user
    @url = 'http://progress.appacademy.io'
    mail(to: 'harsh@hkumar.me', subject: 'Welcome to App Appacademy')
  end
end
