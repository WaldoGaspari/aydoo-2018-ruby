class ParametroTipoDeInversorException < ArgumentError

	def initialize
		raise "Parametro incorrecto. Debe ser ind(individuo) o emp(empresa)."
	end
end