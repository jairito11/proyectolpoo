class ApplicationController < ActionController::Base
	before_action :login?

	def login?
		if session[:persona_id].nil?
			redirect_to login_path, alert: "Debes iniciar sesión."
		end
	end	
end
