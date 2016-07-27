names = ["Gavin", "Jason", "Toni"]

class Peeps
  attr_accessor :name, :phone, :address, :position , :salary, :slack, :github

  def initialize(name, phone, address, position, salary, slack, github)
    self.name = name
    self.phone = phone
    self.address = address
    self.position = position
    self.salary = salary
    self.slack = slack
    self.github = github
  end
end

class Add_person
person = Peeps.new
person << %w([name] phone address position salary slack github)
end


class Search_person
end

class Delete_person
end

class Menu
  def prompt
    puts "Please Select the corresponding letter (A, S or D) as follows:
      {
        A: Add a person
        S: Search for a person
        D: Delete a person
      }"
    selected = gets.chomp
  end

case selected
when A
  add_person
when S
  search_person
when D
  delete_person
else
  puts "Please only select A, S, or D"
end

menu = Menu.new
menu.prompt



  # def  selected(name)
  # add_person
  #   case sound
  #   when "woof"
  #     file.puts "I'm a good dog"
  #   when /.*e.*/
  #     file.puts "I have an e in my sound"
  #   else
  #     file.puts "I make no sound"
  #   end
  # end

# first_name = "Jane"
# middle_name = ""
# last_name = "Smith"
# name = first_name
# name += " #{middle_name}" if middle_name.length > 0
# name += " #{last_name}"
# name # => "Jane Smith"
