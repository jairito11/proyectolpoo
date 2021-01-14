class Edificio < ApplicationRecord
	has_many :roles, dependent: :restrict_with_error
	belongs_to :proveedor
end