require('scrabble')
require('rspec')

describe('String#scrabble') do
  it('If you type in nothing, it returns zero') do
    expect("".scrabble()).to(eq(0))
  end

  it('returns the value of a single letter word') do
    expect("q".scrabble()).to(eq(10))
  end

  it('returns the value of a multiple letter word') do
    expect("zebra".scrabble()).to(eq(16))
  end

  it("is tolerant of idiots typing in caps") do
    expect("ZeBra".scrabble()).to(eq(16))
  end

end
