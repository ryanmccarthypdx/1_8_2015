class Fixnum
  define_method(:ntw) do
    output_array = []
    ordinals = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
      "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    if self.<(20)
      output_array.push(ordinals[self])
    end
    output_array.join()
  end
end
