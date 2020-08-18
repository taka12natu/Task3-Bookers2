class UsersController < ApplicationController

	before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
		@user.books.build
		@book = Book.new
		@books = Book.all
	end

	def index
		@user = current_user
	 	@users = User.all
	end

	def new
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user.id)
	end

	private 
	def user_params
		params.require(:user).permit(:name, :introduction, books_attributes: [:title, :body])
	end

	def book_params
		params.require(:book).permit(:title, :body)
	end

end
