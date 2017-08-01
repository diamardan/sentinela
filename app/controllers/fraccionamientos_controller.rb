class FraccionamientosController < ApplicationController
	before_action :authenticate_user!
	def index
		if params[:buscador]
			@fracc = Fraccionamiento.where("nombre LIKE ? OR clave like ? ", "%#{params[:buscador]}%" ,"%#{params[:buscador]}%").paginate(:per_page => 5, :page => params[:page])
		else
			@fracc = Fraccionamiento.all.paginate(:per_page => 5, :page => params[:page])
		end
		params[:buscador] = nil
		@mensajeborrar = "Está seguro de querer eliminar el registro "
	end
	
	def show
		@fracc = Fraccionamiento.find(params[:id])
	end

	def create
		@fracc = Fraccionamiento.new(fracc_params)
		if @fracc.save
			redirect_to @fracc
		else
			render :new
		end
	end

	def new
		@fracc = Fraccionamiento.new
	end

	def update
		@fracc = Fraccionamiento.find(params[:id])
		if @fracc.update(fracc_params)
			redirect_to action: "index"
		else
			render :edit
		end
	end
	def edit
		@fracc = Fraccionamiento.find(params[:id])
	end

	###720449222209

	def fracc_params
		params.require(:fraccionamiento).permit(:clave,:nombre,:numero_casas,:estado)
	end
end
