class Edificio < ApplicationRecord
	has_many :roles
	belongs_to :proveedor
end