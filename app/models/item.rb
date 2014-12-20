class Item < ActiveRecord::Base
  belongs_to :list

  scope :unfinished, -> { where('done' => false) }
  scope :unfinished_and_recent, -> { unfinished.where("created_at > ?", Time.now-7.days) }
  scope :finished, -> { where('done' => true) }

  validates :body, length: { minimum: 2 }, presence: true
  # validates :list, presence: true
 end

