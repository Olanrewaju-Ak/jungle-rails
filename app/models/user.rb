class User < ApplicationRecord
	#user authentication with bcrypt
	has_secure_password
end
