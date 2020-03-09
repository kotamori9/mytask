class Task < ApplicationRecord
  # belongs_to :user
  has_many :tasks
  validates :content, presence: true
end
