class BitacorasController < ApplicationController
  before_action :authenticate_user!
  def index
    @fracc = Fraccionamiento.all
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
  end

  def listar
    @id_fracc = Fraccionamiento.find(params[:nomber])
    @fecha_mostrar = params[:fecha]
    @fecha_visita = VisitasRegistro.where("fecha = ?", params[:fecha]).paginate(:per_page => 5, :page => params[:page])
  end
end
