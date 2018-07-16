class CotizacionInicialException < ArgumentError

	def initialize
		raise "La cotizacion inicial debe ser mayor o igual a 1."
	end
end