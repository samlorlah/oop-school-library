require 'spec_helper'

describe Student do
  before(:each) do
    @classroom = Classroom.new('Grade 6')
    @student = Student.new(@classroom, 23, true, 'Paul')
  end

  it 'should assign student to classroom' do
    expect(@student.classroom).to be_an_instance_of(Classroom)
  end

  it 'should return student name as Paul' do
    expect(@student.name).to eql 'Paul'
  end

  it 'should return student age as 23' do
    expect(@student.age).to eql 23
  end
end