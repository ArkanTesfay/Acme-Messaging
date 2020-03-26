class UsersController < ApplicationController 



	def signup
		@users=User.new  
	end

	def create
		@users=User.create(user_params)

		if @users.save

			flash[:success]="You have succesfully created an account, Now Login using ur email and password!"

			redirect_to root_path
			else

				render 'signup'
		end
		
	end

	def user_params
		params.require(:user).permit(:username,:email, :password)
		
	end



end
 
