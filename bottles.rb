class Bottles
  def initialize(beverage="milk", surface="wall")
    @beverage = beverage
    @surface = surface
  end

  def song
    verses(99, 0)
  end

  def verses(high, low)
    @max = high
    low = 0 if low < 0
    high.downto(low).map {|n| verse(n) }.join("\n")
  end

  def verse(n)
    initial_bottles(n) + 
    remaining_bottles(n)
  end

  def initial_bottles(n)
    "#{bottles(n).capitalize} on the #{@surface}, #{bottles(n)}.\n"
  end

  def bottles(n)
    result = if n >= 2
                "#{n} bottles"
             elsif n == 1
                "#{n} bottle"
             else
                "no more bottles"
             end
    result += " of #{@beverage}"
  end

  def remaining_bottles(n)
    if n > 0
      "Take #{it(n)} down and pass it around, #{bottles(n-1)} on the #{@surface}.\n"
    else
      "Go to the store and buy some more, #{bottles(@max)} on the #{@surface}.\n"
    end
  end
  
  def it(n)
    n > 1 ? "one" : "it"
  end
end

if __FILE__ == $0
  bottles = Bottles.new
  puts bottles.song
end
