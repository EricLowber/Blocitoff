class Item < ActiveRecord::Base
  belongs_to :list
    scope :visible_to, -> (user) { user ? all : where(done: false) }
  end
