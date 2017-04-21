require('rspec')
require('allergy')

describe('Fixnum#allergy') do
  it('will evaluate a score of 1 as an egg allergy') do
    expect(1.allergy).to(eq('eggs'))
  end

  it('will evaluate a score of 3 as an egg and peanuts allergy') do
    expect(3.allergy).to(eq('peanuts, eggs'))
  end

  it('will evaluate a score of 6 as an shellfish and peanuts allergy') do
    expect(6.allergy).to(eq('shellfish, peanuts'))
  end

  it('will evaluate a score of 92 as pollen, tomatoes, strawberries, and shellfish allergy') do
    expect(92.allergy).to(eq('pollen, tomatoes, strawberries, shellfish'))
  end
end
