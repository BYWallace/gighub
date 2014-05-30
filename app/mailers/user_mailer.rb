class UserMailer < ActionMailer::Base
  default from: "notifications@gighub.com"

  def welcome_email(user)
    @user = user
    @url = "http://localhost:3000/signin"
    email_with_name = "#{@user.name} <#{@user.email}>"
    mail(to: email_with_name, subject: "Welcome to GigHub")
  end
end
