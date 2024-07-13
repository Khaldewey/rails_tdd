require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "without title" do
    article = Article.new
    assert_not article.save
  end
end
