class OrangeTree

  def initialize
    @age = 0;
    @height = 0;
    @orange_count = 0;
  end

  def one_year_passes
    if (is_dead)
      "Sorry, your tree has died."
    else
      grow_tree()
      "Your tree is another year older..."
    end
  end

  def status
    if (@age == 0)
      "Your tree has not begun to grow yet."
    elsif (is_dead)
      "Your tree has passed away."
    else
      "Your tree is now #{@age} year#{@age != 1 ? 's' : ''} old, #{@height} #{@height != 1 ? 'feet' : 'foot'} high and has #{number_of_oranges}."
    end
  end

  def count_oranges
    "Your tree has #{number_of_oranges}."
  end

  def pick_orange
    if (@orange_count > 0)
      @orange_count -= 1
      "You have just picked a delicious orange, enjoy!"
    else
      "Your tree has no oranges in it to take, sorry."
    end
  end




  private
  def grow_tree
    @age += 1
    @height += 2
    @orange_count = fruit_count_this_year
  end

  def is_dead
    @age > 10
  end

  def fruit_count_this_year
    fruitCount = 0
    (1..@age).each do |year|
      fruitCount += fruit_grown_per_year(year)
    end
    return fruitCount
  end

  def fruit_grown_per_year(year)
    if year <= 1
      0
    elsif year <= 4
      3
    elsif year <= 9
      5
    else
      2
    end
  end

  def number_of_oranges
    "#{@orange_count} orange#{@orange_count != 1 ? 's' : ''}"
  end
end