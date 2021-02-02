class Friendship < ApplicationRecord
  belongs_to :invitee, class_name: 'User'
  belongs_to :inviter, class_name: 'User'

  def confirm_friend
    update(accepted: true)
    Friendship.create!(invitee_id: user_id,
                       user_id: invitee_id,
                       accepted: true)
  end
end
