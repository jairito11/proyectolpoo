json.extract! carrera, :id, :clave, :nombre, :descripcion, :campus, :municipio, :estado, :pais, :coordinador, :created_at, :updated_at
json.url carrera_url(carrera, format: :json)
