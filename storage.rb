require './app'
require 'json'

class Storage
  def initialize(app)
    @app = app
  end

  def read_data
    retreive_people()
    retreive_books()
    retreive_rentals()
    assign_rentals()
  end

  def write_data
    save_people()
    save_books()
    save_rentals()
  end

    def retreive_people
    end

    def retreive_books
    end

    def retreive_rentals
    end

    def assign_rentals
    end

    def save_people
        people_array = []
        if @app.peoples.length.positive?
            @app.peoples.each_with_index do |person|
              people_array.push(person.as_json)
            end
        File.write("people.txt", people_array)
        end
    end

    def save_books
        books_array = []
        if @app.books.length.positive?
            @app.books.each_with_index do |book|
              books_array.push(book.as_json)
            end
        File.write("books.txt", books_array)
        end
    end

    def save_rentals
        rentals_array = []
        if @app.rentals.length.positive?
            @app.rentals.each_with_index do |rental|
              rentals_array.push(rental.as_json)
            end
        File.write("rentals.txt", rentals_array)
        end
    end
end
