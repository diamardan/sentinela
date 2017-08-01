#class User < ApplicationRecord
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.find_for_database_authentication(conditions={})
    find_by(celular: conditions[:email]) || find_by(email: conditions[:email])
  end
end

class User < ActiveRecord::Base
  # you can also explicitly define enum as:  enum access_level: [:employee => 0, :company_admin => 1, :super_admin => 2}
  enum rol: [:residente, :vigilante, :admin, :super_admin]

end