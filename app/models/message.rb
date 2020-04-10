class Message < ApplicationRecord
	belongs_to :user
	validates :body, presence:true, length:{minimum:2, maximum:100}
	validates :user_id, presence:true


end
