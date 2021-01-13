class Proveedor < ApplicationRecord
	has_many :edificios
	belongs_to :presidente
end
