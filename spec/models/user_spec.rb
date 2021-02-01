require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { User.create(id: 91, name: 'user1', email: 'user1@gmail.com', password: '123456') }
  let(:user2) { User.create(id: 92, name: 'user2', email: 'user2@gmail.com', password: '123456') }
  let(:user3) { User.create(id: 93, name: 'user3', email: 'user3@gmail.com', password: '123456') }
  describe 'friends' do
    it 'returns friends of a given user' do
      Friendship.create(user_id: 91, friend_id: 92, status: true)
      Friendship.create(user_id: 91, friend_id: 93, status: true)
      puts 'output'
      puts user1.friends
      expect(user1.friends).to eq(%w[user1 user2])
    end
  end
end
