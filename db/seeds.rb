# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
dk = User.new(:nickname => 'Darken', :username => 'Darken', :password => 'darken',  :email => 'darken@frumasidus.cz', :admin => true, :status => 1)
dk.user_profile = UserProfile.new()

bw = User.new(:nickname => 'Black Wolf', :username => 'Blackwolf', :password => 'blackwolf',  :email => 'blackwolf@furry.cz', :admin => true, :status => 1)
bw.user_profile = UserProfile.new()

dk.save
bw.save
