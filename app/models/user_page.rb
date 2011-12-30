class UserPage < ActiveRecord::Base
	belongs_to :user

	validates :user_id, :presence => true
	validates :url, :format => { :with => URI::regexp(%w(http https)) }
end
