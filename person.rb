require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end

  # Private Methods
  def of_age?
    @age >= 18
  end
  private :of_age?

  # Public Methods
  def can_use_services?
    of_age? || @parent_permission
  end
  public :can_use_services?
end
