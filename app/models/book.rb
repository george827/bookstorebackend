class Book < ApplicationRecord
    belongs_to :user

    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :author, presence: true, length: { minimum: 3, maximum: 50 }
    validates :year_of_release, presence: true, length: { minimum: 4, maximum: 20 }
    validates :isbn, presence: true, length: { minimum: 3, maximum: 13 }
    validates :quatity, presence: true, length: { minimum: 1, maximum: 3 }
    validates :status, presence: true, length: { minimum: 3, maximum: 50 }
    validates :genre, presence: true, length: { minimum: 3, maximum: 50 }

end
