require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "the truth" do
    assert true, message: "deveria ser verdadeiro"
  end 

  test "a soma de dois valores" do
    assert_equal 4 , 3+4
  end
end
