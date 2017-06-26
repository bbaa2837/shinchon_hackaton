class Contest < ActiveRecord::Base
    has_many :posts
    
    def self.search(search)
     where("name LIKE ?", "%#{search}%") 
    end
end
