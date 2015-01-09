class Fixnum
  define_method(:ntw) do
    output_array = []
    ordinals = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
      "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    biggies = ["thousand", "million", "billion"]


    if self.==(0)
      output_array.push("zero")
    elsif self.<(20)
      output_array.push(ordinals[self])
    else
      self_split = self.to_s().split("")
      output_array.unshift(ordinals[self_split.pop().to_i()])
      output_array.unshift(tens[self_split.pop().to_i().-(2)])
        if self_split.any?()
          output_array.unshift("hundred").unshift(ordinals[(self_split.pop().to_i())])
        end
          biggie_counter = 0
          until self_split.empty?()
            output_array.unshift(biggies[biggie_counter])
            three_at_a_time = self_split.pop(3).join().to_i()
            if three_at_a_time.<(20)
              output_array.unshift(ordinals[three_at_a_time])
            else
              taat_s = three_at_a_time.to_s().split("")
              output_array.unshift(ordinals[taat_s.pop().to_i()])
              output_array.unshift(tens[taat_s.pop().to_i().-(2)])
              if taat_s.any?()
                output_array.unshift("hundred").unshift(ordinals[(taat_s.pop().to_i())])
              end
            end

            biggie_counter = biggie_counter.+(1)
          end
    end
    output_array.delete("")
    output_array.join(" ")

  end
end
