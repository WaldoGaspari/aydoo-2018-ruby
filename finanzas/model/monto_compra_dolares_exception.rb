class MontoCompraDolaresException < ArgumentError

	def initialize
		raise "El monto debe ser mayor o igual a 100."
	end
end