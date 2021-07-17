# frozen_string_literal: true

# Counter of reps for pyramid workout
class RepCounter
  def simple_pyramid(height)
    sequence = 1.step(by: 1).take(height)
    sequence.inject { |total, set| total + set }
  end

  def dimond_pyramid(height)
    sequense_increased_part = 1.step(by: 1).take(height / 2)
    sequense_decreased_part = (height / 2).step(by: -1).take(height / 2)
    additional_set_for_odd_input = height.odd? ? (height / 2 + 1) : 0

    sequense_increased_part.inject { |total, set| total + set } +
      sequense_decreased_part.inject { |total, set| total + set } +
      additional_set_for_odd_input
  end

  def simple_with_reversed_pyramid(height)
    simple_pyramid(height) * 2
  end
end
