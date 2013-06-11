class Contacts

		attr_accessor :id, :firstname, :lastname, :email, :notes

		def initialize(id, firstname, lastname, email, notes)
				@id = id
				@firstname = firstname
				@lastname = lastname
				@email = email
				@notes = notes
		end

		# hash = {
		#     :id => @id,
		#     :firstname => @firstname,
		#     :lastname => @lastname,
		#     :email => @email,
		#     :notes => @notes,
		# }

		def add_contact_to_array(db)
				db.contacts_array.push(self)
				# .contacts_array.push(c)
		end

		# def to_s
		#     puts self.firstname
		#     puts self.lastname
		#     puts self.email
		#     puts self.notes
		#     return "contact_printoff"
		# end
# Printing method; not used for testing purposes
end



class Database

		attr_accessor :contacts_array

		def initialize
				@contacts_array = []
		end

		def find_contact(find_attribute, find_me)
			@contact_store = []

			if find_attribute == "last name"
				@contacts_array.each { |contact|
					if contact.lastname == find_me
						@contact_store << contact
				# else
				# 	puts "No matches"
					end
				}
			else
			  puts "No such input identified."
			end

			if @contact_store.length > 0
				return @contact_store
			else
					puts "No matches"
			end

	  end

	  def modify_contact(attribute_to_mod, old_value, new_value)
	  		find = find_contact(attribute_to_mod, old_value)[0]
	  		if attribute_to_mod == "last name"
	  		find.lastname  = new_value
	  		end
	  end

	  def delete_contact(attribute, user_to_delete)
	  		remove_me = find_contact(attribute, user_to_delete)[0]
	  		if attribute == "last name"
	  			@contacts_array.delete(remove_me)
	  	  end
	  end

# def compare_first_name(firstname)

#     @contacts_array.each do |c|
#         # each c is a contact object, a specific one


#         c.firstname == firstname

#     end

end

