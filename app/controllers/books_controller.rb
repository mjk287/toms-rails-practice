class BooksController < ApplicationController
  before_action :get_book, only: [:show]

  def index
    @books = Book.all
  end

  def show
    @authors = Author.all
    @author_book = @book.author_books.build
  end

  private

  def get_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :pages)
  end
end
