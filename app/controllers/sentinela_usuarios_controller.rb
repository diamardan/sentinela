class SentinelaUsuariosController < ApplicationController
  before_action :authenticate_user!
	def index
		@fracc = Fraccionamiento.all
    if params[:buscador]
      @u_sent = SentinelaUsuario.where("nombre LIKE ? OR apellidos like ? ", "%#{params[:buscador]}%" ,"%#{params[:buscador]}%").paginate(:per_page => 5, :page => params[:page])
    else
      @u_sent = SentinelaUsuario.all.paginate(:per_page => 5, :page => params[:page])
    end
    params[:buscador] = nil
    @mensajeborrar = "Está seguro de querer eliminar el registro "
	end

	def show
		@u_sent = SentinelaUsuario.find(params[:id])
    fuser = @u_sent.fraccionamiento
    @f_user = Fraccionamiento.find(fuser)
    @fraccionamientos = Fraccionamiento.all
  end

  def new
    @u_sent = SentinelaUsuario.new
    @fraccionamientos = Fraccionamiento.all
  end
  def create
    @u_sent = SentinelaUsuario.new(usent_params)
    if @u_sent.save
      redirect_to @u_sent
    else
      render :new
    end
  end

  def update
    @u_sent = SentinelaUsuario.find(params[:id])
    if @u_sent.update(usent_params)
      redirect_to @u_sent
    else
      render :edit
    end
  end
  def edit
    @u_sent = SentinelaUsuario.find(params[:id])
    @fraccionamientos = Fraccionamiento.all
  end

  def destroy
    SentinelaUsuario.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to sentinela_usuarios_path
  end

  def usent_params
    params.require(:sentinela_usuario).permit(:usuario,:nombre,:apellidos,:password,:email,:celular,:fraccionamiento,:domicilio,:calle,:numero)
  end
end
