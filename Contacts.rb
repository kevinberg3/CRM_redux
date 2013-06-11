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
end



class Database

    attr_accessor :contacts_array

    def initialize
        @contacts_array = []
    end

#     def add_contact(contact)
#         @contacts_array << contact
#     end

# end


# def compare_first_name(firstname)

#     @contacts_array.each do |c|
#         # each c is a contact object, a specific one


#         c.firstname == firstname

#     end

end
