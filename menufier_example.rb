require_relative 'menufier.rb'

def dog
  puts 'Bark bark'
end

def wolf
  puts 'wulf wulf'
end

menu = Menu.new

menu.add(1, 'Dog', method(:dog))
menu.add(2, 'Wolf', method(:wolf))
loop do
  break unless menu.navigated?("Select an animal:")
end
