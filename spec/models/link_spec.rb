require 'rails_helper'
RSpec.describe Link, type: :model do
  it 'is valid with a title, url, content' do
    user = create(:user)
    link = create(:link, user_id: user.id)
    expect(link).to be_valid
  end

  it 'is invalid without a content' do
    link = Link.new(content: nil)
    link.valid?
    expect(link.errors[:content]).to include("can't be blank")
  end

  it 'is invalid without a title' do
    link = Link.new(title: nil)
    link.valid?
    expect(link.errors[:title]).to include("can't be blank")
  end

  it 'is invalid without a url' do
    link = Link.new(url: nil)
    link.valid?
    expect(link.errors[:url]).to include("can't be blank")
  end

  it 'should have many comments' do
    a = Link.reflect_on_association(:comments)
    expect(a.macro).to eq(:has_many)
  end
end
