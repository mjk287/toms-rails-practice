class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books

  validates(:name, uniqueness: true, presence: true)
  validates(:birth_year, presence: true)
  validates(:birth_year, numericality: {only_integer: true})
  validates_each :birth_year do |song, attr, value|
    song.errors.add(attr, 'must be current year or earlier') if value != nil && value >= DateTime.now.year
  end
end
