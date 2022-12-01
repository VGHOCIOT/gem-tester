# frozen_string_literal: true

class SeparatorComponent < ViewComponent::Base
  def initialize(first_value:, second_value:, third_value:)
    @first_value = first_value
    @second_value = second_value
    @third_value = third_value
  end

end
