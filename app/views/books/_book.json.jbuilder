json.extract! book, :id, :title, :author, :year_of_release, :genre, :isbn, :quatity, :status, :created_at, :updated_at
json.url book_url(book, format: :json)
