class UserContact < ActiveRecord::Base
	belongs_to :user
	validates :user, :presence => true
	validates :contant_type, :inclusion => { :in => CONTACTS.keys }
	validates :contact, :presence => true
end
