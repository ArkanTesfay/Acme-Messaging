class MessagesController < ApplicationController

	def message_params

		params.require(:message).permit(:body)
		
	end

	def index
		@message=Message.new
		@message=Message.all
	
	end

	def create
		@message=Message.create(message_params)
		@message.user_id=current_user
		if @message.save
			redirect_to chatroom_path
			
			else

				render 'index'
		end
	end

	


	




end