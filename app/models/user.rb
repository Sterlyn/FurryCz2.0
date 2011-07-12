require 'digest/sha1'

class User < ActiveRecord::Base
	has_many :user_contacts
	has_many :user_nicknames
	has_many :user_pages
	has_many :user_logs

	has_one :user_profile

	validates :username, :presence => {:message => "Uživatelské jméno musí být vyplněna"}
	validates :nickname, :presence => {:message => "Přezdívka musí být vyplněna"}
	validates :nickname, :uniqueness => {:message => "Přezdívka musí být unikátní v rámci systému" }
	validates :password, :presence => { :message => "Heslo musí být vyplněno" }
	validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "E-Mail je ve špatném formátu" }

	before_save :hash_pw

	def check_pw pw_string
		if Digest::SHA1.hexdigest(pw_string).eql? @attributes['password']
			return true
		else
			return false
		end
	end

	private

	def hash_pw
		@attributes['password'] = Digest::SHA1.hexdigest(@attributes['password'])
	end
end