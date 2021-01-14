class SesionesController < ApplicationController
	layout 'application_login'

  skip_before_action :login?,only: [:login, :validar_usuario]

  def login
    session[:persona_id] = nil
  end

  def validar_usuario
  	@persona = Persona.where('curp = ? and password_digest = ?',
  		params[:curp], params[:password_digest]).first

  	if @persona.nil?
  		validar = false
  	else
  		validar = true
      	session[:persona_id] = @persona.id
      	session[:nombre] = @persona.nombre+' '+@persona.paterno+' '+@persona.materno
  	end

  	respond_to do |format|
  		if validar
  			format.html{redirect_to autores_path, notice: 'Sesion iniciada correctamente' }
  		else
  			format.html{redirect_to login_path, alert: 'persona/Password no valido'}
  		end
  	end
  end

  def cerrar_sesion
    session[:persona_id] = nil
    session[:nombre] = nil
    respond_to do |format|
      format.html{redirect_to login_path, alert: "Sesión finalizada."}
    end
  end
end
