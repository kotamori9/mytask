class Task < ApplicationRecord
  # belongs_to :user
  has_many :todos, dependent: :delete_all
  validates :content, presence: true
end
