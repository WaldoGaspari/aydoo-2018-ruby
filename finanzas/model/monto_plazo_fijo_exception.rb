class MontoPlazoFijoException < ArgumentError

	def initialize
		raise "El monto para este tipo de plazo fijo debe ser mayor o igual a 100."
	end
end
