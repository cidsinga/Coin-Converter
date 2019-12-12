# !/usr/bin/ruby
class CoinCounter
  def initialize(input)
    @input = input
    @currentvalue = 0
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end
  def currentvalue(currentvalue)
    @currentvalue = currentvalue
  end
  def quarters(quarters)
    @quarters = quarters
  end
  def dimes(dimes)
    @dimes = dimes
  end
  def nickels(nickels)
    @nickels = nickels
  end
  def pennies(pennies)
    @pennies = pennies
  end

  def quarter_counter()
    self.quarters((@input / 0.25).floor)
# *or* @quarters = (@input / 0.25).floor
    @@currentvalue = @input % 0.25
  end
  def dime_counter()
    self.dimes((@@currentvalue / 0.10).floor)
# *or* @dime = (@currentvalue / 0.1).floor
    @@currentvalue = (@@currentvalue % 0.10).round(2)
  end
  def nickel_counter()
    self.nickels((@@currentvalue / 0.05).floor)
    puts @nickels
# *or* @dime = (@currentvalue / 0.1).floor
    @@currentvalue = (@@currentvalue % 0.05).round(3)
  end
  def penny_counter()
    self.pennies((@@currentvalue / 0.01).floor)
    puts @pennies
# *or* @dime = (@currentvalue / 0.1).floor
    @@currentvalue = (@@currentvalue % 0.01).round(3)
  end
  puts "you have " + @quarters + "quarters, " + @dimes + "dimes, " + @nickels "nickels, and " @pennies + "pennies!"
end

#
#
#
#   get input
#   loop through the input unitl input = 0
#   %.25, %.10, %.05,
#   store rounded % 25 to quarter
#   store rounded % 10 to dime
#   store rounded % 5 to nickel
#   store remainder to penny
