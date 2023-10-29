class UsersController < ApplicationController
	#action for rendering the sign-up form
	def new
	end

	#action for receiving the form and creating the user with the form's parameters
	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to "/signup"
		end
	end

	private
		def user_params
			params.require(:user).permit(:name,:email,:password,:password_confirmation)
		end

end
