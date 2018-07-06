require 'rails_helper'

describe 'user sees all articles' do
  describe 'they visit all articles' do
    it 'displays all articles' do
      article_1 = Article.create(title: "Space Jam overtakes 'Titanic' as highest grossing film of all time", body: 'Michael Jordan claims he is the Marlon Brando of our time')
      article_2 = Article.create(title: "Space Jam 2 announced; 'Art is dead,' claims a resurrected Alfred Monet", body: "Nobody cares what you think, Alfred")

      visit '/articles'

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_2.title)
    end
  end
end
