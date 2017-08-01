class VisitasRegistroController < ApplicationController
	before_action :authenticate_user!
	def index
		@v_registro = VisitasRegistro.all
	end	
end
