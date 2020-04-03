class SessionController < ApplicationController



	def new

	end

	def create
		user=User.find_by(email: params[:session][:email])

		if user && user.authenticate(params[:session][:password])
			flash[:success]="You have logged in!"
			session[:user_id]=user.id
			redirect_to chatroom_path

		else

			flash.now[:notice]="There is something wrong with your info"
			render 'new'

		end

	end

	def destroy
		session[:user_id]= nil
		redirect_to root_path

	end

end
