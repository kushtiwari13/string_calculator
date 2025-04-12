class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    else
      delimiter = ","
    end

    negatives = numbers.split(/[#{delimiter}\n]/).select { |num| num.to_i < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?

    numbers.split(/[#{delimiter}\n]/).map(&:to_i).sum
  end
end
