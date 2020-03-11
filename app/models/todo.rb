class Todo < ApplicationRecord
  belongs_to :task
  belongs_to :user
  validates :todo, presence: true
end
