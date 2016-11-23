class Club < ApplicationRecord
	has_many :users
	mount_uploader :logo, PictureUploader
	validates :name, presence: true, length: { maximum: 50 }
	validates :introduction , presence:true, length: { minimum: 6}
	validate  :picture_size
	private
		def picture_size
			if logo.size > 5.megabytes 
				errors.add(:logo, "should be less than 5MB")
			end 
		end
end
