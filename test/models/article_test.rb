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

  test "should be archived after 30 days" do
    first = Article.first
    assert_not first.archived?
    puts "Data Atual: #{Date.current}"
    future = Date.current + 31.days
    travel_to future do
      puts "Data Futura: #{future}"
      assert first.archived?
    end
  end
end
