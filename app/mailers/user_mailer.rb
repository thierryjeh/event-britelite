class UserMailer < ApplicationMailer
  default from: 'johanstrauss35@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://hidden-eventbritelite.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcomme !')
  end
end
