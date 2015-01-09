require('ntw')
require('rspec')
require('pry')

describe ('Fixnum#ntw') do


  it('returns zero if 0 is entered') do
    expect(0.ntw()).to(eq("zero"))
  end

  it('works for all numbers under 20') do
    expect(15.ntw()).to(eq("fifteen"))
  end

  it('works for all numbers under 100') do
    expect(45.ntw()).to(eq("forty five"))
  end

  it('works for all numbers under 1000') do
    expect(245.ntw()).to(eq("two hundred forty five"))
  end

  it('works for all numbers') do
    expect(1123456789.ntw()).to(eq("one billion one hundred twenty three million four hundred fifty six thousand seven hundred eighty nine"))
  end

end
