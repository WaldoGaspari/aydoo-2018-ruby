class DiasPlazoFijoPrecancelableException < ArgumentError

	def initialize
		raise "Plazo real incorrecto. Debe ser mayor o igual a 1 y menor o igual al plazo acordado."
	end
end