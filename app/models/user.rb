class User < ActiveRecord::Base
 
  has_one :list
  has_many :items, through: :list
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, presence: true
end
