class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :name, length: { minimum: 5 }, presence: true
  validates :user, presence: true
end
