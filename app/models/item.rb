class Item < ActiveRecord::Base
  belongs_to :list

  scope :created_after, -> (date) { where("items.created_at > ?", date) }
  scope :visible_to, -> (user) { user ? all : where(done: false) }
   
  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true
 end
