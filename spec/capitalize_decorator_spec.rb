require 'spec_helper'

describe CapitalizeDecorator do
  before(:each) do
    @person = Person.new(23, 'adams')
  end
  it('should capitalize name') do
    capitalize = CapitalizeDecorator.new(@person)
    expect(capitalize.correct_name).to eql 'Adams'
  end
end
