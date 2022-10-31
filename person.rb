class Person
  # Getters
  attr_accessor :name, :age, :id

  def initialize(age, name="Unknown", parent_permission=true)
    @id = rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  #Private Methods
  def is_of_age?
    if @age >= 18
      true
    else
      false
    end
  end
end