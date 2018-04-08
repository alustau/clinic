require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  test "should not save doctor without name" do
    doctor = ::Doctor.new
    
    doctor.crm = "123"

    assert_not doctor.save, "Saved the doctor without a name"
  end

  test "should not save doctor without crm" do
    doctor = ::Doctor.new
    
    doctor.name = "Denis Alustau"
    
    assert_not doctor.save, "Saved the doctor without a crm"
  end
end
