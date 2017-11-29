class Person < ApplicationRecord
  has_many :notes, dependent: :destroy
  validates :name, :age, :gender, presence: true
  validates :name, length: { in: 2..20 }
  validates :age, numericality: true
end
