class BooksController < ApplicationController
  before_action :get_book, only: [:show, :update]

  def index
    @books = Book.all
  end

  def show
    @authors = Author.all
    @author = Author.new
  end

  def update
    @author = Author.find_by(name: book_params[:authors_attributes]["0"][:name])
    @book.authors << @author

    redirect_to(book_path(@book))
  end

  private

  def get_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :pages, authors_attributes: [:name])
  end
end
