require 'spec_helper'

describe Nameable do
  it('::correct_name method should raise an error') do
    nameable = Nameable.new
    expect{nameable.correct_name('World')}.to raise_error(NotImplementedError)
  end
end