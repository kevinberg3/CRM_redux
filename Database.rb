class Contacts

    attr_accessor :id, :firstname, :lastname, :email, :notes

    def initialize(id, firstname, lastname, email, notes)
        @id = id
        @firstname = firstname
        @lastname = lastname
        @email = email
        @notes = notes
    end
    @contacts_array = []
    @contacts_array.push(hash)

        hash = {
            :id => @id,
            :firstname => @firstname,
            :lastname => @lastname,
            :email => @email,
            :notes => @notes,
        }
        hash

    def add_contact_to_array

    end


end


contact1 = Contacts.new(100, "Kevin", "Berg", "kb@kevin.com", "Needs to improve Ruby skills")

puts contact1.id
