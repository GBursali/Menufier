require_relative 'gb_menu.rb'

def dog
  puts 'Bark bark'
end

def wolf
  puts 'wulf wulf'
end

main = Menu.new

main.add(1, 'Dog', method(:dog))
main.add(2, 'Wolf', method(:wolf))
loop do
  break unless main.navigated?("Select an animal:")
end
