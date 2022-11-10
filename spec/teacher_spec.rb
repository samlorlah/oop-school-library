require 'spec_helper'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new('Maths', 23, true, 'Stephen Wood')
  end

  it 'should return teacher name as Stephen Wood' do
    expect(@teacher.name).to eql 'Stephen Wood'
  end

  it 'should return Teacher age as 23' do
    expect(@teacher.age).to eql 23
  end

  it 'should return Teacher::can_use_services? as true' do
    expect(@teacher.can_use_services?).to be_truthy
  end
end
