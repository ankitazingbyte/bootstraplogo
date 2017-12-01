class UserMailer < ApplicationMailer
	default from: 'ankiproffesional@gmail.com'
 
  def welcome_email(user)
   	@user = user
    @url  = 'http://bootstraplogos.com/login'
	mail(to: @user.email, subject: 'Welcome to bootstraplogos.com')
  end
end
