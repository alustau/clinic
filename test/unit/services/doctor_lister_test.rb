require 'test_helper'

class DoctorListerTest < ActiveSupport::TestCase

  setup do
    @lister = Doctor::Lister.new
  end

  test "should list all doctors" do
    assert_equal 3, @lister.all.count  
  end

  test "should find a specific doctor" do
    assert_equal "Denis Alustau", @lister.find(1).name  
  end
end
