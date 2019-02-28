class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books
  accepts_nested_attributes_for :authors
end
