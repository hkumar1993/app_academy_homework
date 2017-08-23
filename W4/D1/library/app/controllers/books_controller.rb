class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all
    render :index
  end

  def new
    # your code here
    render :new
  end

  def create
    # your code here
    book = Book.new(title: params[:book][:title], author: params[:book][:author])
    book.save
    redirect_to books_url
  end

  def destroy
    # your code here
    book = Book.find_by_id(params[:id])
    # fail if book.nil?
    book.destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
