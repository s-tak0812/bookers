class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)

    if book.save
      flash[:notice] = "Book was successfully updated."
      redirect_to 'books/show'
    else
      render 'books'
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end


  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
