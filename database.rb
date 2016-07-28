class Peeps
  attr_accessor :name, :phone, :address, :position , :salary, :slack, :github

  def initialize(name)
    @name = name
  end
end

class Menu
  def initialize
    @peeps = []
  end

  def prompt
    loop do
      puts "Please Select the corresponding letter (A, S or D) as follows:"

      puts "A: Add a person"
      puts "S: Search for a person"
      puts "D: Delete a person"
      puts "C: Cancel search"

      chosen = gets.chomp

      case chosen
      when "A"
        add_person
      when "S"
        puts "Please provide name"
        search_person
      when "D"
        puts "Please provide name"
        delete_person
      when "C"
        cancel_search
        exit
      else
        puts "Please only select A, S, or D"
      end
    end
  end

  PREFIX = "Dear humanoid please provide the"

  def add_person
    puts "#{PREFIX} name"
    name = gets.chomp

    person = Peeps.new(name)

    puts "#{PREFIX} phone"
    person.phone = gets.chomp

    puts "#{PREFIX} address"
    person.address = gets.chomp

    puts "#{PREFIX} position"
    person.position = gets.chomp

    puts "#{PREFIX} salary"
    person.salary = gets.chomp

    puts "#{PREFIX} slack"
    person.slack = gets.chomp

    puts "#{PREFIX} github"
    person.github = gets.chomp

    @peeps << person
    p @peeps
    puts "#{@peeps[-1].name} has been added, thank you"
  end

  def search_person
    puts "Who are you looking for ?"
    search_person = gets.chomp

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
  end

  def delete_person
    puts "Who would you like to delete?"
    delete_person = gets.chomp

    for person in @peeps
      if person.name == delete_person
        @peeps.delete(person)
        puts "86 them now"
        p @peeps
        return
      else
        puts "Unable to find #{delete_person}, they may be M.I.A."
      end
    end
  end

  def cancel_search # This one works
    puts "Hope you had fun, come back REAL soon you hear"
    exit
  end
end

menu = Menu.new
menu.prompt
