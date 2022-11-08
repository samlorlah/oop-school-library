require './menu'

def main
  menu = Menu.new
  loop do
    menu.display_list
    option = gets.chomp.to_i
    return puts 'Thank you for using the school library!' unless option != 7

    menu.options(option)
  end
end

main
