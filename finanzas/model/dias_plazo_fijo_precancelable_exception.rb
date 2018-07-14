class DiasPlazoFijoPrecancelableException < ArgumentError

	def initialize
		raise "Plazo incorrecto. Debe ser mayor a 1 y menor o igual al plazo acordado."
	end
end