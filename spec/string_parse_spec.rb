require('rspec')
require('string_parse')

describe('String#string_sparse') do
  it ('returns the quantity of times that a given word occurs in a user provided string') do
    expect(("I'm happy").string_parse("happy")).to(eq(1))
  end
  it ('returns the quantity of times that a given word occurs in a user provided string') do
    expect(("This day is a great day").string_parse("day")).to(eq(2))
  end
end
