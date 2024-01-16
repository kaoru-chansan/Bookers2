class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_paramas)
    @book.user_id = current_user.id
    @book.save
    redirect_to index_path
  end

  def index
    @books = all
  end

  def show
  end

  private

  def book_paramas
    paramas.require(:book).parmit(:title, :body)
  end

end
