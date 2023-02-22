require './base_decorator'

class TrimmerDecorator < Decorator
  def correct_name
    if super.length > 10
      super[0, 10]
    else
      super
    end
  end
end
