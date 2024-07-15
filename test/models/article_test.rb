require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "without title" do
    article = Article.new
    assert_not article.save
  end

  test "should do some interesting with stored state" do
   assert_equal "My first post", articles(:one).title
   assert_equal "Second Post", articles(:two).title
   assert Article.count >= 1000
  end
end
