class Article < ApplicationRecord
	def self.search(search)
		where("title ILIKE ? or body LIKE ?", "%#{search}%", "%#{search}%")
	end

end
