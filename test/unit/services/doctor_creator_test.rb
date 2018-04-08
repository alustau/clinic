require 'test_helper'

class DoctorCreatorTest < ActiveSupport::TestCase

  setup do
    @creator = Doctor::Creator.new
  end

  test "should create a doctor" do
    @creator.create(name: "Dr. Gray", crm: "123-ab")
    
    assert_equal 4, Doctor::Lister.new.all.count
  end
end
