require_relative '../model/dias_plazo_fijo_tradicional_exception'
require_relative '../model/monto_plazo_fijo_tradicional_exception'

class PlazoFijo

	def calcular_ganancia_del_plazo_fijo (plazo, interes, monto)
		if (plazo < 30) 
			DiasPlazoFijoTradicionalException.new
		end

		if (monto < 100)
			MontoPlazoFijoTradicionalException.new
		end

		resultado = ((plazo/365.00) * (interes/100.00) * monto).round(2)
		return resultado
	end

	def calcular_ganancia_de_plazo_fijo_precancelable (plazo_acordado, plazo_real, interes, monto)
		resultado = ((plazo_acordado/365.00) * (interes/100.00) * monto).round(2)

		if ((plazo_acordado - plazo_real) != 0)
			resultado = (resultado / 2).round(2) 
		end

		return resultado
	end
end

