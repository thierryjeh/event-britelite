class UserMailer < ApplicationMailer
  default from: 'jo.tournerie@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://monsite.com/login/'
    mail(to: @user.email, subject: 'Welcomme !')
  end
end
