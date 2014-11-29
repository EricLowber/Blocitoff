class Item < ActiveRecord::Base
  belongs_to :list
  belongs_to :user

  scope :unfinished, -> { where("items.created_at > 7.days.ago AND items.done = false") }
 
  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true
 end
