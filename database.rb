class Peeps
  attr_accessor :name, :phone, :address, :position , :salary, :slack, :github

  def initialize(name, phone, address, position, salary, slack, github)
  end
end

class Menu
  def initialize
    @peeps = []
end

def prompt
  puts "Please Select the corresponding letter (A, S or D) as follows:
    {
      A: Add a person
      S: Search for a person
      D: Delete a person
    }"
  chosen = gets.chomp
  if chosen == "D"
    break
  end
end

# case chosen
# when A
#   add_person
# when S
#   search_person
# when D
#   delete_person
# when C
#   cancel_search
# else
#   puts "Please only select A, S, or D"
# end

  def prompt
    loop do
    puts "A: Add a person"
    puts "S: Search for a person"
    puts "D: Delete a person"
    puts "C: Cancel"
    picked = gets.chomp

    if picked == "A"
      puts "Please provide first and last name"
      Add_person
    elsif picked == "S"
      puts "Please provide first and last name"
      Search_person
    elsif picked == "D"
      puts "Please provide first and last name"
      Delete_person
    elsif picked == "C"
    end
  end

def method_name
  add_person
person = Peeps.new
@peeps << person
person << %w([name] phone address position salary slack github)
end

def search_person
  puts "Who are you looking for "
  search_person = gets.chomp!

  for person in @peeps
  if person.name == search_person
    puts "That is:
          #{person.name}
          #{person.phone}
          #{person.address}
          #{person.position}
          #{person.salary}
          #{person.slack}
          #{person.github}"
    return
  else
    puts "Unable to find #{search_person}, they maybe M.I.A."
  end
end

def delete_person
  delete_person = gets.chomp
end

def cancel_search
  puts "Thank you and have a great day"
  exit
end

menu = Menu.new
menu.prompt
