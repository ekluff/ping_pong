require('rspec')
require('ping_pong')

range_test = 2
range_test_array = (0..range_test).to_a

describe ('Fixnum#ping_pong') do

  it ('takes the number n, returns array of numbers 0-n') do
    expect((2).ping_pong()).to(eq([1, 2]))
  end

  it ('returns ping when a number is divisible by 3') do
    expect((3).ping_pong()).to(eq([1, 2, "ping"]))
  end

  it ('returns pong when a number is divisible by 5') do
    expect((5).ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
  end

  it ('returns ping pong when number is divisble by both 3 and 5') do
    expect((15).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "PININININGGGG PONNNNNNNNNG!!!!?!"]))
  end

end
