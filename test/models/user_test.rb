require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "the truth" do
    assert true, message: "deveria ser verdadeiro"
  end 

  test "user should respond to name" do
    user = User.new
    assert_respond_to user, :name
  end
end
