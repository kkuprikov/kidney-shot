class Task < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates_presence_of :completion

  has_and_belongs_to_many :users
  accepts_nested_attributes_for :users
end
