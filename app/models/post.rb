class Post < ActiveRecord::Base

    validates :title, presence: true, length: { minimum: 2}
    validates :text, presence: true, length: { minimum: 2}

    def self.search(query)
        where("title like ?", "%#{query}%")
    end

end
