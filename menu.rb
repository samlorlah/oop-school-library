require './app'

class Menu
  attr_accessor :storage

  def initialize
    @app = App.new
  end

  def display_list
    puts 'Welcome to School library App!'
    puts "
      Choose an option by entering a number:
      1 - List all books
      2 - List all people
      3 - Create a person
      4 - Create a book
      5 - Create a rental
      6 - List all rentals for a given person id
      7 - Exit"
    option = gets.chomp.to_i
    return puts 'Thank you for using the school library!' if option == 7

    options(option)
  end

  def options(option)
    case option
    when 1
      @app.list_all_books
    when 2
      @app.list_all_people
    when 3
      @app.create_person
    when 4
      @app.add_new_book
    when 5
      @app.add_new_rental
    when 6
      @app.list_all_rentals
    else
      puts 'invalid Input. Please try again'
    end
    display_list
  end
end
