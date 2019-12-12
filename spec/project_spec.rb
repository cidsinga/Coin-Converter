require('rspec')
require('project')


describe('CoinCounter#quarter_counter') do
  it("should return the remainder of input / .25") do
    coincounter = CoinCounter.new(0.99)
    expect(coincounter.quarter_counter()).to(eq(0.24))
  end
  it("should return the remainder of currentvalue / .10") do
    coincounter = CoinCounter.new(0.99)
    expect(coincounter.dime_counter()).to(eq(0.04))
  end
  it("should return the remainder of currentvalue / .05") do
    coincounter = CoinCounter.new(0.99)
    expect(coincounter.nickel_counter()).to(eq(0.04))
  end
  it("should return the remainder of currentvalue / .01") do
    coincounter = CoinCounter.new(0.99)
    expect(coincounter.penny_counter()).to(eq(0.00))
  end
  # it("should return the number of quarters") do
  #   coincounter = CoinCounter.new(0.99)
  #   expect(coincounter.quarter_counter(0.99)).to(eq(3))
  # end

# it("returns a Player 1 win total as 1") do
#   game = Game.new("rock", "scissors")
#   game.game_win()
#   expect(game.player_one_wins()).to(eq(1))
# end
end
