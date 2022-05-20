require 'rails_helper'

RSpec.describe Query, type: :model do
  describe "Query Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(5) }
    it { should validate_length_of(:name).is_at_most(2000) }
  end

  describe "Query Associations" do
    it { should have_many(:searches) }
    it { should have_many(:users) }
  end
end
