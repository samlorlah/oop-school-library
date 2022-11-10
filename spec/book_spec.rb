require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('New Book', 'Greg Arthur')
  end

  it 'should return Book object created' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'should return the title' do
    expect(@book.title).to eql 'New Book'
  end

  it 'should return the author' do
    expect(@book.author).to eql 'Greg Arthur'
  end
end
