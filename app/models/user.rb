class User < ApplicationRecord
    belongs_to :club, optional: true
    has_many :notices
	before_save { self.email = email.downcase }
	mount_uploader :logo, PictureUploader
	validates :name, presence: true, length: { maximum: 50 } 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
									  format: { with: VALID_EMAIL_REGEX }, 
									  uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }, allow_blank: true
	validate  :picture_size

	def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost) 
	end

	private
		def picture_size
			if logo.size > 5.megabytes 
				errors.add(:logo, "should be less than 5MB")
			end 
		end
end
