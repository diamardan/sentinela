class Fraccionamiento < ApplicationRecord

end

##@fracc = Fraccionamiento.where("nombre LIKE ?", "%#{params[:buscador]}%")