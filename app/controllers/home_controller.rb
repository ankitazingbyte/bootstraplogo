class HomeController < ApplicationController
	
	def index

	end

	def account
		@blogs = Blog.all
	end

	def contact
		@categories = Category.all.map{ |c| [c.name, c.id]}
	end

	def contact_us_mailer
	    @email = params[:message][:email]
	    @name = params[:message][:name]
	    @message = params[:message][:message]
	    @user = User.create(name: @name, message: @message, email: @email, password: "12345678")
	    UserMailer.welcome_email(@user).deliver_now
	    redirect_to root_path
	end 

	def Need_Custom_Logo
		@categories = Category.all.map{ |c| [c.name, c.id]}
	end
end
