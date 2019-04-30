# Simplifies CLI menus.

# Represents a menu for CLI
class Menu
  def initialize
    @items = []
  end

  def add(index, name, proc)
    @items << MenuItem.new(index, name, proc)
  end

  def print_choices
    @items.each do |item|
      puts item.as_string
    end
  end

  def navigated?(text)
    print_choices
    print(text)
    search = gets.to_i
    item = @items.detect { |mapitem| mapitem.index == search }
    return false if item.nil?

    item.call
    true
  end
end

# Represents every item in the menu
class MenuItem
  attr_reader :index
  def initialize(index, name, func)
    @index = index
    @name = name
    @func = func
  end

  def call
    @func.call
  end

  def as_string
    "#{@index}=>#{@name}"
  end
end
