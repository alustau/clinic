require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  setup do 
    @lister  = Doctor::Lister.new    
  end

  test "should create a doctor" do
    creator = Doctor::Creator.new
    
    creator.create(name: "Dr. Gray", crm: "123-ab")

    assert_equal 4, Doctor::Lister.new.all.count
  end

  test "should list all doctors" do
    assert_equal 3, @lister.all.count  
  end

  test "should find a specific doctor" do
    assert_equal "Denis Alustau", @lister.find(1).name  
  end

  test "should update a doctor data" do
    Doctor::Updater.new.update(1, name: "Dr. Alustau")
    
    assert_equal "Dr. Alustau", @lister.find(1).name  
  end

  test "should delete a doctor data" do
    Doctor::Deleter.new.delete(1)

    assert_equal 2, @lister.all.count  
  end
end
