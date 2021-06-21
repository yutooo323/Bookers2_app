class BooksController < ApplicationController


  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def destroy
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    @book.destroy
    redirect_to book_path(current_user)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
