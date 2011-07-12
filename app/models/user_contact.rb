class UserContact < ActiveRecord::Base
	belongs_to :user
	validates :user, :presence => true
	validates :contact_type, :inclusion => { :in => CONTACTS.keys }
	validates :contact, :presence => true
end
