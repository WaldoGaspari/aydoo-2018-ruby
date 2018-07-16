class DiasPlazoFijoException < ArgumentError

	def initialize
		raise "El plazo debe ser mayor o igual a 30."
	end
end