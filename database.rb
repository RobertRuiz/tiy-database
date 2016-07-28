class Peeps
  attr_accessor :name, :phone, :address, :position , :salary, :slack, :github

  def initialize(name, phone, address, position, salary, slack, github)
    @peeps = []
  end
end

class Menu
  attr_accessor :A, :S, :D, :C

  def initialize(A, S, D, C)
    @prompt = []

loop do
  puts "Please Select the corresponding letter (A, S or D) as follows:
  def prompt
      {
        A: Add a person
        S: Search for a person
        D: Delete a person
        C: Cancel search
      }"
  chosen = gets.chomp
  case chosen
    when A
      puts "Please provide first and last name"
      add_person
    when S
      puts "Please provide first and last name"
      search_person
    when D
      delete_person
      puts "Deleting them now"
    when C
      cancel_search
      exit
    else
      puts "Please only select A, S, or D"
    end
  end
end

def add_person
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
    puts "Unable to find #{search_person}, they may be M.I.A."
  end
end

def delete_person
  delete_person = gets.chomp
end

def cancel_search
  exit
end

menu = Menu.new
menu.prompt
