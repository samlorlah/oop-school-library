require './person'

class Teacher < Person
  def initialize(specialization, age, parent_permission, name = 'Unknown')
    @specialization = specialization
    super(age, name, parent_permission: parent_permission)
  end

  def can_use_services?
    true
  end

  def as_json()
    {
        type: Teacher,
        name: @name,
        id: @id,
        age: @age,
        specialization: @specialization
    }
  end
end
