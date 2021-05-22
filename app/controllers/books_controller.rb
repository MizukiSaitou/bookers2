class BooksController < ApplicationController
def index
 @books = Book.all
end

def new
 book = Book.new
end

def create
 book = Book.new(current_user)
 book.save
 redirect_to book_path
end

def show
 @book = Book.find(params[:id])
end

def edit
 @book = Book.find(params[:id])
 redirect_to book_path
end

def destroy
 book = Book.find(params[:id])
 book.destroy
 redirect_to books_path
end


end
