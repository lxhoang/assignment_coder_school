class Article < ApplicationRecord
	validates :title, :body,  presence: true
	validates :title, length: { minimum: 5 }
	validates :body, length: { minimum: 5, maximum: 1000 }

	def self.search(search)
		search = search.downcase
		where("LOWER(title) ILIKE ? or LOWER(body) LIKE ?", "#{search}%", "%#{search}%")
	end

	def destroyable?
		!(title.eql?('About Creator') && body.include?('Le Xuan Hoang'))
	end

end
