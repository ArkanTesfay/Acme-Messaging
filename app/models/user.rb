class User < ApplicationRecord
	has_many :messages
	validates :username , presence: true, uniqueness:{case_sensitive:false}, length:{minimum:5, maximum:50}
	VALID_EMAIL_REGEX=  /\w+?@\w+?\x2E.+/
	validates :email, presence: true, uniqueness:{case_sensitive: false}, length:{minimum: 5, maximum: 50}, format: {with: VALID_EMAIL_REGEX } 


	has_secure_password 



end