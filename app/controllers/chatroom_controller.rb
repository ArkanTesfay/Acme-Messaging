class ChatroomController < ApplicationController
	protect_from_forgery :except => [:index]

	before_action :require_user
	def index
		@messages=Message.all
		@message=Message.new
	end

end
