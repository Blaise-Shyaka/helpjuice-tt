require 'rails_helper'

RSpec.describe Search, type: :model do
  it { should belong_to(:query) }
  it { should belong_to(:user) }
end
