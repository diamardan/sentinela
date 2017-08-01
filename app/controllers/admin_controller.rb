class AdminController < ApplicationController
	before_action :authenticate_user!
	def index
		@fracc = Fraccionamiento.all #variable para pedir listado de fraccionamientos
	end
	def show
		@user = User.find(params[:id])
	end
end