class UserNickname < ActiveRecord::Base
	belongs_to :user

	validates :nickname, :presence => true
	valiates :user_id, :presence => true
end
