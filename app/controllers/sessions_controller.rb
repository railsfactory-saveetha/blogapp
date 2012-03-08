class SessionsController < ApplicationController
	def create
			if user=User.authenticate(params[:email],params[:password])
				 session[:user_id] = user.id
				 redirect_to root_path , :notice => "Logged in successfully"
			else
				 flash.now[:alert] = "Invalid Login/Password Combination"
				 render :action => 'new'
			end
	end	
	def destroy
		reset_session
		redirect_to root_path, :notice => "Logged out successfully"
	end
end
