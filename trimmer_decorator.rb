require './decorator'

class TrimmerDecorator < Decorator
  def initialize(person)
    super(person)
  end
  
  def correct_name
    @nameable_obj.correct_name[0..9] if @nameable_obj.correct_name.length > 10
  end
end
