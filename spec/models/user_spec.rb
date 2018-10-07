require 'rails_helper'
RSpec.describe User, type: :model do
  it 'should have many links' do
    a = User.reflect_on_association(:links)
    expect(a.macro).to eq(:has_many)
  end
end
