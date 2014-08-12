class Story < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  has_many :comments
  has_many :commenters, through: :comments, source: :user

=======
 belongs_to :user
 
>>>>>>> 7c2c1aa465733377ee3216fec5068355cdabc0e6
  validates :title, :category, :link, :upvotes, presence: true
  
  def self.search(query)
    where("title LIKE :query OR category LIKE :query", query: "%#{query}%")
  end
end
