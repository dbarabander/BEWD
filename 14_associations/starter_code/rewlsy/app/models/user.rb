class User < ActiveRecord::Base
  has_many :stories
<<<<<<< HEAD
  has_many :comments

=======
>>>>>>> 7c2c1aa465733377ee3216fec5068355cdabc0e6

  validates :username, :password, presence: true
  validates :username, uniqueness: true

  def self.create_with_password(username, password)
    hash = password_hash(password)
    User.create(username: username, password: hash)
  end

  def self.find_authenticated_user(username, password)
    User.where(username:username, password: password_hash(password)).first
  end

  private 
  def self.password_hash(password)
    return Digest::SHA2.hexdigest(password)
  end
end

user - user.first
user.username
user.stories this gives you an array
user.stories.count
my_story = Story.find(1)
my_story.user
story.user , this will return one user object
becuaes a user has many stories, we can ask user object to create a story for us and link it up already
stories.create(title: "crazy", link: "Google.com", upvotes: 1, category: 'news')
story_two = user.stories.last

need it in the schema
it added user:id, story:id


story has_many :commenters, through :comments, source :user
