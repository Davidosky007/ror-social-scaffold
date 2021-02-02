require 'rails_helper'

RSpec.describe Friendship, type: :model do
  let(:test_user) { User.create(name: 'Example User', email: 'abcefg@gmail.com', password: 'password') }
  let(:test_friend) { User.create(name: 'Example Friend', email: 'abcjkkj@gmail.com', password: 'password') }

  let(:subject) do
    described_class.new(
      inviter_id: test_user.id,
      invitee_id: test_friend.id
    )
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a user' do
      subject.inviter_id = ''
      expect(subject).not_to be_valid
    end

    it 'is not valid without a friend' do
      subject.invitee_id = ''
      expect(subject).not_to be_valid
    end
  end

  it { is_expected.to belong_to(:inviter) }
  it { is_expected.to belong_to(:invitee) }
end
