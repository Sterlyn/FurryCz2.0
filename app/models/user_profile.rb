class UserProfile < ActiveRecord::Base
	belongs_to :user

	validates :homepage, :format => { :with => URI::regexp(%w(http https)), :allow_blank => true, :message => "Domovská stránka musí být buď prázdná a nebo v korektním URL formátu" }
end
