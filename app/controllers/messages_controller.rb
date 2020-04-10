class MessagesController < ApplicationController

	protect_from_forgery :except => [:message_params,:message_render,:create]

	before_action :require_user


	def create

		message=current_user.messages.build(message_params)

		if message.save
			ActionCable.server.broadcast "chatroom_channel", msg:message_render(message)
			#redirect_to chatroom_path
		end

	end

	private
	 def message_params
		params.require(:message).permit(:body)
	end

	def message_render(message)
		render(partial: 'message', locals:{message: message})
	end
















end
