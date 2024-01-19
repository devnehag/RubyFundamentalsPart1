# 3a. The script aims to define a method count_words that takes a sentence as a string and returns a hash with each word as a key and its frequency as the value.
# The current implementation is flawed and needs debugging.

def count_words(sentence)
  word_count = Hash.new(0)
  sentence.split.each { |word| word_count[word.downcase] += 1 }
  word_count
end

# 3b. The script is intended to define a method calculate_factorial that takes an integer and returns its factorial. The current implementation is not functioning correctly.

def calculate_factorial(number)
  if number >= 0
    factorial = 1
    while number > 1
      factorial *= number
      number -= 1
    end
    factorial
  else
    'Error: Negative number'
  end
end

# 3c. The script is meant to define a method find_median that takes an array of numbers, sorts it, and returns the median value. The current implementation is not working correctly.

def find_median(numbers)
  # Check if the array is empty
  return nil if numbers.empty?

  # Sort the array
  sorted_numbers = numbers.sort

  # Find the middle index
  middle_index = sorted_numbers.length / 2

  # Check if the array has an odd or even number of elements
  if sorted_numbers.length.odd?
    # If odd, return the middle element
    sorted_numbers[middle_index]
  else
    # If even, return the average of the two middle elements
    (sorted_numbers[middle_index - 1] + sorted_numbers[middle_index]) / 2.0
  end
end
