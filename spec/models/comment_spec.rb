require 'rails_helper'
RSpec.describe Comment, type: :model do
  it 'is invalid without body' do
    comment = Comment.new(body: nil)
    comment.valid?
    expect(comment.errors[:body]).to include("can't be blank")
  end

  it 'should belong to link' do
    a = Comment.reflect_on_association(:link)
    expect(a.macro).to eq(:belongs_to)
  end

  it 'should belong to user' do
    a = Comment.reflect_on_association(:user)
    expect(a.macro).to eq(:belongs_to)
  end
end
