require('rspec')
require('sphinx')

describe ('#Riddles') do
  describe("#ask") do
    it("should return true if answer is correct") do
      riddle = Riddles.new("The more you take, the more you leave behind. What am I?", "footsteps")
    expect(riddle.ask('footsteps')).to(eq(true))
    end
    it("should return false if answer is not correct") do
      riddle = Riddles.new("The more you take, the more you leave behind. What am I?", "footsteps")
    expect(riddle.ask('time')).to(eq(false))
    end
  end
end
