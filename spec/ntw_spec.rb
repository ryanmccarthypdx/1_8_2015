require('ntw')
require('rspec')

describe ('Fixnum#ntw') do


  it('returns zero if 0 is entered') do
    expect(0.ntw()).to(eq("zero"))
  end

  it('works for all numbers under 20') do
    expect(15.ntw()).to(eq("fifteen"))
  end



end
