require('rspec')
require('allergy')
require('pry')

describe('Fixnum#allergy') do
  it('will evaluate a score of 1 as an egg allergy') do
    expect(1.allergy).to(eq('eggs'))
  end

  it('will evaluate a score of 3 as an egg and peanuts allergy') do
    expect(3.allergy).to(eq('eggs, peanuts'))
  end
end
