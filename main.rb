require './menu'

def main
  menu = Menu.new
  loop do
    menu.display_list
    option = gets.chomp.to_i
    menu.options(option)
  end
end

main
