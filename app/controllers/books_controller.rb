class BooksController < ApplicationController
  def show
    @book = Book.where(id: params[:id]).first
  end
end
