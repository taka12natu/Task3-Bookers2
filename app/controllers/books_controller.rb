class BooksController < ApplicationController

	def create
		@book = Book.new(book_paramas)
		@book.user_id = current_user.id
		@book.save
		redirect_to user_path(@user.id)

	private
	def book_params
		params.require(:book).permit(:title, :body)
	end
end
