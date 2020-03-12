class Task < ApplicationRecord
  belongs_to :user
  has_many :todos, dependent: :delete_all
  validates :content, presence: true

  # 検索機能
  def self.search(search)
    if search
      Task.where('text LIKE(?)', "%#{search}%")
    else
      Task.all
    end
  end

end
