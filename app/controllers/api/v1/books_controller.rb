class Api::V1::BooksController < ApplicationController
    def index
        @books = Book.all
        render json: @books
      end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book, status: :created
        else
            render json: { errors: @book.errors }, status: :unprocessable_entity
        end
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            render json: @book
        else
            render json: { errors: @book.errors }, status: :unprocessable_entity
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: @book
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :year_of_release, :isbn, :quatity, :status, :genre)
    end


end