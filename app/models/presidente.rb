class Presidente < ApplicationRecord
	has_many :proveedores, dependent: :restrict_with_error
end
