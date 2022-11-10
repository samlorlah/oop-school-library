require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, parent_permission, name = 'Unknown')
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def as_json()
    {
      type: Student,
      name: @name,
      id: @id,
      age: @age,
      classroom: @classroom,
      parent_permission: @parent_permission
    }
  end
end
