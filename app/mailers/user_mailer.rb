class UserMailer < ActionMailer::Base
  default from: "bonjour@bonjourrr.com"
  def reserved_email(user)
    @user = user
    @url  = "http://www.cspp52553.com"
    mail(:to => user.useremail, :subject => "Your reservation is made to our system.")
  end
end
