class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :name, length: { minimum: 2 }, presence: true
  # validates :user, presence: true
end
