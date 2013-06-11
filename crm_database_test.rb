require "test/unit"

require_relative "Contacts.rb"

class DatabaseTest < Test::Unit::TestCase

    def setup
        @database = Database.new
    end

    def test_enter_contact
        contact1 = Contacts.new(100, "Kevin", "Berg", "kb@kevin.com", "Needs to improve Ruby skills")
        assert_equal "Kevin", contact1.firstname
    end

    def test_display_all_contacts
        contact1 = Contacts.new(100, "Kevin", "Berg", "kb@kevin.com", "Needs to improve Ruby skills")
        contact2 = Contacts.new(101, "Dylan", "Tredger", "dt@dylan.com", "has a coffee")
        contact1.add_contact_to_array(@database)
        contact2.add_contact_to_array(@database)
        assert_equal 2, @database.contacts_array.length
        assert_equal "Dylan", @database.contacts_array[1].firstname
    end
end
