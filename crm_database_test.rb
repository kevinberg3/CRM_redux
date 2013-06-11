require "test/unit"

require_relative "Contacts.rb"

class DatabaseTest < Test::Unit::TestCase

    def setup
        @database = Database.new
        @contact1 = Contacts.new(100, "Kevin", "Berg", "kb@kevin.com", "Needs to improve Ruby skills")
        @contact2 = Contacts.new(101, "Dylan", "Tredger", "dt@dylan.com", "has a coffee")
        @contact3 = Contacts.new(102, "Robert", "Berg", "rb@berg.com", "Kevin's father")
        @contact1.add_contact_to_array(@database)
        @contact2.add_contact_to_array(@database)
        @contact3.add_contact_to_array(@database)
    end

    def test_enter_contact
        assert_equal "Kevin", @contact1.firstname
    end

    def test_display_all_contacts

        assert_equal 3, @database.contacts_array.length
        assert_equal "Dylan", @database.contacts_array[1].firstname
        # assert_equal "contact_printoff",  @database.puts(contacts_array)
    end

    def test_find_specific_contact
        assert_equal [@contact1, @contact3], @database.find_contact("last name", "Berg")
    end

    def test_modify_contact
        assert_equal "James", @database.modify_contact("last name", "Berg", "James")
    end

    def test_delete_contact
        @database.delete_contact("last name", "Tredger")
        assert_equal 2, @database.contacts_array.length
        assert_equal "Robert", @database.contacts_array[-1].firstname
    end

end

