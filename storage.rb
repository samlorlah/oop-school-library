require './app'
require './student'
require './teacher'
require './book'
require './rental'
require 'json'

class Storage
  def initialize(app)
    @app = app
  end

  def read_data
    retreive_people
    retreive_books
    retreive_rentals
  end

  def write_data
    save_people
    save_books
    save_rentals
  end

  def retreive_people
    return unless File.exist?('people.json')

    persons = JSON.parse(File.read('people.json'))
    persons.each do |person|
      individual = if person['type'] == 'Student'
                     Student.new(person['classroom'], person['age'], person['parent_permission'], person['name'])
                   else
                     Teacher.new(person['specialization'], person['age'], person['parent_permission'], person['name'])
                   end
      individual.id = person['id']
      @app.peoples.push(individual)
    end
  end

  def retreive_books
    return unless File.exist?('books.json')

    books = JSON.parse(File.read('books.json'))
    books.each do |book|
      new_book = Book.new(book['title'], book['author'])
      @app.books.push(new_book)
    end
  end

  def retreive_rentals
    return unless File.exist?('rentals.json')

    rentals = JSON.parse(File.read('rentals.json'))
    rentals.each do |rental|
      person = @app.peoples.select { |p| p.id == rental['person_id'] }
      book = @app.books.select { |b| b.title == rental['book_title'] and b.author == rental['book_author'] }
      rental = Rental.new(rental['date'], book[0], person[0])
      @app.rentals.push(rental)
    end
  end

  def save_people
    return unless @app.peoples.length.positive?

    persons = @app.peoples.map(&:as_json)
    File.write('people.json', JSON.dump(persons))
  end

  def save_books
    return unless @app.books.length.positive?

    books = @app.books.map(&:as_json)
    File.write('books.json', JSON.dump(books))
  end

  def save_rentals
    return unless @app.rentals.length.positive?

    rentals = @app.rentals.map(&:as_json)
    File.write('rentals.json', JSON.dump(rentals))
  end
end
