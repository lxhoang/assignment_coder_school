class Article < ApplicationRecord
	validates :title, :body,  presence: true
	validates :title, length: { minimum: 5 }
	validates :body, length: { minimum: 5, maximum: 400 }


	def self.search(search)
		where("title ILIKE ? or body LIKE ?", "%#{search}%", "%#{search}%")
	end

end
