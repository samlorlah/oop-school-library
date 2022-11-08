require './menu'

def main
  menu = Menu.new
    menu.display_list
    menu.options(gets.chomp.to_i)
end

main
