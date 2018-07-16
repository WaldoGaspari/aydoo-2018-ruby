class MontoPlazoFijoException < ArgumentError

	def initialize
		raise "El monto para los plazos fijos debe ser mayor o igual a 100."
	end
end
