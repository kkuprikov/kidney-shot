class Task < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  has_and_belongs_to_many :users
end
