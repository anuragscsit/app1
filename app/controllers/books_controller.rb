class BooksController < ApplicationController

	before_action :authenticate_user!, :except => [:index, :new]

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def edit
		@book = Book.find(params[:id])
	end

	def show
		@book = Book.find(params[:id])
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to books_path, notice: "#{@book.name} has been uploaded."
		else 
			render 'new'
		end
	end

	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(book_params)
			redirect_to books_path
		else 
			render 'edit'
		end
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path, notice: "#{@book.name} has been deleted."
	end

	private

		def book_params
			params.require(:book).permit(:name, :author, :isbn, :image, :attachment)
		end

end