class Classified < ActiveRecord::Base
  validates :title, uniqueness: true
  validates :title, presence: true
end
