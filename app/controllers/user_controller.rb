class UserController < ApplicationController

	before_filter :member_only, :except => [:register,:register_form,:index, :login]

	def index

	end

  def register_form
		@user = User.new
  end

	def register
		save_user = true
		@user = User.new
		@user.update_attributes(params[:user])
		@user.nickname = @user.username
		@user.user_profile = UserProfile.new(params[:user_profile])
		if not @user.password.eql? params[:u][:password]
			@user.errors['password'] = ["Hesla se musí shodovat"]
			save_user = false
		end
		if save_user
			if @user.save
				render :text => "User created"
				#TODO: Vyhodit redirect někam jinam
				#TODO: Nadefinovat notificator pro adminy a uzivetele
			else
				save_user = false
			end
		end
		if save_user.eql? false
			render :register_form
		end
	end


  def overview
  end

  def bookmarks
  end

  def login
		if not session['user'].nil? then session['user'] = nil end

		@user = User.where("nickname=\"#{params[:user][:username]}\"").first
		if @user.nil?
			flash.now[:error] = "Uživatel neexistuje"
			render :controller => 'user', :action => 'index'
			return true
		end

		unless @user.status.eql? 1
			flash.now[:error] = "Tento uživatel nemá právo přístupu"
			render :controller => 'user', :action => 'index'
			return true
		end

		unless @user.check_pw params[:user][:password]
			flash.now[:error] = "Špatné heslo"
			render :action => 'index'
			return true
		end

		session[:user] = @user.id
		render :action => 'overview'
  end

	def logout
		session[:user] = nil
		redirect_to :action => 'index'
	end

  def pw_change_form
  end

  def pw_change
  end

  def profile_edit
		@user = User.find(session[:user])
		@user_profile = @user.user_profile
  end

  def profile_save
		#TODO: Nedovolit zmenu username
		#TODO: Overit stare heslo pri zmene hesla
  end

	# Ajax methods

	def ajax_add_page
	end

	def ajax_del_page

	end

	def ajax_add_contact
		c = UserContact.new(:user_id => session[:user], :contact_type => params[:contact_type], :contact => params[:contact_value])
		if c.save
			render :text => "OK", :layout => false
		else
			render :text => "WRONG", :layout => false, :status => 500
		end
	end

	def ajax_del_contact

	end

	def ajax_pages
		render :text => "Stranky", :layout => false

	end

	def ajax_contacts
		@user = User.find(session[:user])
		render :layout => false
	end
end
