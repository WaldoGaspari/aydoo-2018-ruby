class InteresPlazoFijoException < ArgumentError

	def initialize
		raise "El interes debe ser mayor o igual a 1."
	end
end