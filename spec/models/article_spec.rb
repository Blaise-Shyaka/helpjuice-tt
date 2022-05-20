require 'rails_helper'

RSpec.describe Article, :type => :model do
  describe "Article Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:article_url) }
    it { should validate_length_of(:title).is_at_least(5) }
    it { should validate_length_of(:description).is_at_least(5) }
    it { should validate_length_of(:title).is_at_most(200) }
    it { should validate_length_of(:description).is_at_most(2000) }
    it { should validate_length_of(:article_url).is_at_most(1000) }
  end
end