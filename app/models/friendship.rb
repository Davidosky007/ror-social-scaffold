class Friendship < ApplicationRecord
  belongs_to :inviter
  belongs_to :invitee, class_name: 'User'
end
