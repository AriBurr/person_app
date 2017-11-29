class Note < ApplicationRecord
  belongs_to :person
  validates :body, presence: true, length: { maximum: 250 }
end
