class Book < ApplicationRecord

	validates :title, presence: true
	validates :body, length: {maximum: 200}, presence: true


	belongs_to :user
	# accepts_attachments_for :users, attachment: :profile_image
end
