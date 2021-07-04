class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id), notice: "Book was successfully created."
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book), notice: "Book was successfully updated."
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_path
  end

  private
  def book_params
    params.permit(:title, :body)
  end

end
