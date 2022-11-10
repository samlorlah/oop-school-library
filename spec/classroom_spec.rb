require 'spec_helper'

describe(Classroom) do
  before(:each) do
    @classroom = Classroom.new('Grade 6')
  end

  context('classroom without students') do
    it('classrom label to equal Grade 6') do
      expect(@classroom.label).to eql 'Grade 6'
    end

    it('classroom to have empty student') do
      expect(@classroom.students).to be_empty
    end
  end

  context('classroom with student') do
    it('classroom to have student') do
      @student = Student.new(@classroom, 23, true, 'Paul')
      expect(@student.classroom).to be_an_instance_of(Classroom)
    end
  end
end
