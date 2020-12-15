class Bottles
  def song
    verses(99, -3)
  end

  def verses(hi, lo)
    lo = 0 if lo < 0
    hi.downto(lo).map {|n| verse(n) }.join("\n")
  end

  def verse(n)
    if n >= 3
        "#{n} bottles of milk on the wall, #{n} bottles of milk.\n" +
        "Take one down and pass it around, #{n - 1} bottles of milk on the wall.\n"
    elsif n == 2
        "#{n} bottles of milk on the wall, #{n} bottles of milk.\n" +
        "Take one down and pass it around, #{n - 1} bottle of milk on the wall.\n"        
    elsif n == 1
        "#{n} bottle of milk on the wall, #{n} bottle of milk.\n" +
        "Take one down and pass it around, no more bottles of milk on the wall.\n"       
    else
        "No more bottles of milk on the wall, no more bottles of milk.\n" + 
        "Go to the store and buy some more, 99 bottles of milk on the wall."
    end
  end
end

if __FILE__ == $0
    bottles = Bottles.new
    puts bottles.song
end
