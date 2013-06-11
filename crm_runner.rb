require_relative "Contacts.rb"

class CRM_runner
	attr_accessor :database

	def initialize
		@database = Database.new
	end

	def go
		# processing("What do you want to do?")
		input = gets.chomp

		case input
		when "add"
			id = gets.chomp
			# firstname = gets.chomp
			# lastname = gets.chomp
			# email = gets.chomp
			# notes = gets.chomp
			new_contact = Contacts.new(id, "dyl", "tre", "ema@em", "note") #firstname, lastname, email, notes)
			new_contact.add_contact_to_array(@database)
		end

	end




  # to simulate the computer processing . . .
  def processing(message)
    load_bar = "|________________________________|"
    puts ""
    print "".ljust(20) +  "#{load_bar}\r"

    load_bar = load_bar.split("")
    sleep(1)

    load_bar.each_with_index do |x, index|
      if x == "_"
        load_bar[index] = ">"
        print "".ljust(20) + "#{load_bar.join("")}\r"
        sleep(0.1)
      end
      load_bar.each_with_index do |x, index|
        if x == ">"
          load_bar[index] = "="
        end
      end
    end
    puts "\n\n"
    puts "".ljust(10) + message
  end





end

play = CRM_runner.new
play.go
puts "------"
puts play.database.contacts_array

