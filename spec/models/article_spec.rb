require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'validacao_inicial' do
    article = Article.new 
    expect(false).to eq(article.save)
  end
end
