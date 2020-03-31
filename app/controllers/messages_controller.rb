class MessagesController < ApplicationController



	def message_params
		params.require(:message).permit(:body)
	end


	def create
		@message=current_user.messages.build(message_params)

		if @message.save
			flash[:notice]="Delivered"
			redirect_to chatroom_path
		else
			flash[:notice]="Failed"

			render 'message_failed'

		end
		
	end



end