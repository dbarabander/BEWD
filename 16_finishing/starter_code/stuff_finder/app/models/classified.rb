class Classified < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :title, uniqueness: true
  validates :title, presence: true
end
