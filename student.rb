require './person'

class Student < Person
  attr_reader :classroom

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
end
