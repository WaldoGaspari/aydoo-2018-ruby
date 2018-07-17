class CantidadDeParametrosDeEntradaException < ArgumentError

	def initialize
		raise "La cantidad de parametros ingresados es incorrecta. Faltan datos."
	end
end