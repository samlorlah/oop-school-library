require './decorator'

class CapitalizeDecorator < Decorator
  def initialize(person)
    super(person)
  end

  def correct_name
    @nameable_obj.correct_name.capitalize
  end
end
