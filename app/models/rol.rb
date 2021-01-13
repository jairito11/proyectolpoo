class Rol < ApplicationRecord
	has_many :personas
	belongs_to :edificio
end
