require 'spec_helper'

describe Person do
  before(:each) do
    @person1 = Person.new(23, 'Adams')
    @person2 = Person.new(12, 'Elvis', parent_permission: false)
  end

  it 'Person::id to range between 1 and 1000' do
    expect(@person1.id).to be_between(1, 1000).inclusive
    expect(@person2.id).to be_between(1, 1000).inclusive
  end

  it 'Person::correct_name to equal Adams or Elvis' do
    expect(@person1.name).to eql 'Adams'
    expect(@person2.name).to eql 'Elvis'
  end

  it 'Person::age to equal 23 or 12' do
    expect(@person1.age).to eql 23
    expect(@person2.age).to eql 12
  end

  it 'Person::can_use_services?' do
    expect(@person1.can_use_services?).to be_truthy
    expect(@person2.can_use_services?).to be_falsy
  end
end