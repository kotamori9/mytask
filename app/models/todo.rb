class Todo < ApplicationRecord
  belongs_to :task
  # belogns_to :user
  validates :todo, presence: true
end
