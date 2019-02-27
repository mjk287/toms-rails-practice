class AuthorBooksController < ApplicationController

  def create
    @author_book= AuthorBook.create(author_books_params)

    redirect_to(book_path(@author_book.book))
  end

  def destroy
    @author_book = AuthorBook.find_by(author_books_params)
    @book = @author_book.book

    @author_book.destroy

    redirect_to(book_path(@book))
  end

  private
  def author_books_params
    params.require(:author_book).permit(:author_id, :book_id)
  end

end
