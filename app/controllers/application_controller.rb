class ApplicationController < ActionController::Base
  protect_from_forgery

	def member_only
		if session[:user].eql? nil
			flash[:warning] = "K dané akci musíte být přihlášeni"
			redirect_to :controller => 'user', :action => 'index'
			return false
		else
			return true
		end
	end

	def admin_only
		members_only
		unless User.find(session[:user]).is_admin?
			flash[:warning] = "K dané akci musíte být administrátor"
		  redirect_to :controller => 'user', :action => 'index'
		end
	end
end
