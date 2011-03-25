require 'digest/sha1'

class User < ActiveRecord::Base
	has_many :user_contacts
	has_many :user_nicknames
	has_many :user_pages

	validates :nickname, :presence => {:message => "Přezdívka musí být vyplněna"}
	validates :nickname, :uniqueness => {:message => "Přezdívka musí být unikátní v rámci systému" }
	validates :password, :presence => { :message => "Heslo musí být vyplněno" }
	validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "E-Mail je ve špatném formátu" }
	validates :homepage, :format => { :with => URI::regexp(%w(http https)), :allow_blank => true, :message => "Domovská stránka musí být buď prázdná a nebo v korektním URL formátu" }

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