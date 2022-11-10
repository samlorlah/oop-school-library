require 'spec_helper'

describe Rental do
  before(:each) do
    @book = Book.new('New Book', 'Greg Arthur')
    @person = Person.new(23, 'Adams')
  end

  context('Create Rental with book and person') do
    it('expects Rental Date to equal 01/02/2022') do
      rental = Rental.new('01/02/2022', @book, @person)
      expect(rental.date).to eql('01/02/2022')
    end

    it('expects Rental Book to equal class Book') do
      rental = Rental.new('01/02/2022', @book, @person)
      expect(rental.book).to be(@book)
    end

    it('expects Rental Person to equal class Person') do
      rental = Rental.new('01/02/2022', @book, @person)
      expect(rental.person).to be(@person)
    end
  end

  context('Create Rental through Book and Person') do
    it('Create Rental through Book object') do
      rental = @book.add_rental(@person, '02/04/2020')
      expect(rental.book).to be(@book)
    end

    it('Create Rental through Person object') do
      rental = @person.add_rental('02/04/2020', @book)
      expect(rental.person).to be(@person)
    end
  end
end
