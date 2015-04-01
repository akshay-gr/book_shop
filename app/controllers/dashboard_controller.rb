class DashboardController < ApplicationController
  def index
    @books = Book.all
  end
end
