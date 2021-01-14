class Proveedor < ApplicationRecord
	has_many :edificios, dependent: :restrict_with_error
	belongs_to :presidente
end
