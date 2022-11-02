require './person'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
