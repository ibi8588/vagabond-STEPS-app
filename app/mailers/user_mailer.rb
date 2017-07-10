class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url="https://vagabond-steps-app.herokuapp.com/"
    mail(to: @user.email, subject: "welcome")
  end
end
