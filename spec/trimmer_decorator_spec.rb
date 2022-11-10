require 'spec_helper'

describe TrimmerDecorator do
  before(:each) do
    @person = Person.new(23, 'oluwamuyiwafawole')
  end
  it('trims name to maximum of 10 characters') do
    trim = TrimmerDecorator.new(@person)
    expect(trim.correct_name).to eql 'oluwamuyiw'
  end
end