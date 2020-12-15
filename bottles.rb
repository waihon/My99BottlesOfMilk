class Bottles
  def song
    verses(99, -3)
  end

  def verses(hi, lo)
    lo = 0 if lo < 0
    hi.downto(lo).map {|n| verse(n) }.join("\n")
  end
  
  def verse(n)
      initial_bottles(n) + 
      remaining_bottles(n)
  end
  
  def initial_bottles(n)
    if n >= 3
        "#{n} bottles of milk on the wall, #{n} bottles of milk.\n"
    elsif n == 2
        "#{n} bottles of milk on the wall, #{n} bottles of milk.\n"
    elsif n == 1
        "#{n} bottle of milk on the wall, #{n} bottle of milk.\n"
    else
        "No more bottles of milk on the wall, no more bottles of milk.\n" 
    end
  end
  
  def remaining_bottles(n)
    if n >= 3
        "Take one down and pass it around, #{n - 1} bottles of milk on the wall.\n"
    elsif n == 2
        "Take one down and pass it around, #{n - 1} bottle of milk on the wall.\n"        
    elsif n == 1
        "Take one down and pass it around, no more bottles of milk on the wall.\n"       
    else
        "Go to the store and buy some more, 99 bottles of milk on the wall.\n"
    end
  end
end

if __FILE__ == $0
    bottles = Bottles.new
    puts bottles.song
end
