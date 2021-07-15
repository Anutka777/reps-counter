# frozen_string_literal: true

# Counter of reps for pyramid workout
class RepCounter
  def simple_pyramid(height)
    sequence = 1.step(by: 1).take(height)
    sequence.inject { |total, set| total + set }
  end
end
