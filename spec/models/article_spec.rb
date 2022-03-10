require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    it 'should that the factory is valid' do
      expect(FactoryBot.build(:article)).to be_valid
    end

    it 'should validate the presence of title' do
      article = FactoryBot.build :article, title: ''
      expect(article).to_not be_valid
      expect(article.errors.messages[:title]).to include("can't be blank")
    end

    it 'should validate the presence of the content' do
      article = FactoryBot.build :article, content: ''
      expect(article).to_not be_valid
      expect(article.errors.messages[:content]).to include("can't be blank")
    end

    it 'should validate the presence of the slug' do
      article = FactoryBot.build :article, slug: ''
      expect(article).to_not be_valid
      expect(article.errors.messages[:slug]).to include("can't be blank")
    end

    it 'should validate the uniqueness of the slug' do
      article = FactoryBot.create :article
      invalid_article = FactoryBot.build :article, slug: article.slug
      expect(invalid_article).to_not be_valid
    end
  end

  describe '.recent' do
    it 'should list recent article first' do
      old_article = create :article
      newer_article = create :article
      expect(described_class.recent).to eq([newer_article, old_article])
      
      old_article.update_column :created_at, Time.now
      expect(described_class.recent).to eq([old_article, newer_article])
    end
  end
end
