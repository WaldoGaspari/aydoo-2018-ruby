class CotizacionFinalException < ArgumentError

	def initialize
		raise "La cotizacion final debe ser mayor o igual a 1."
	end
end