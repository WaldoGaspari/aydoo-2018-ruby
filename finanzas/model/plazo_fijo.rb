class PlazoFijo

	def calcular_ganancia_del_plazo_fijo (plazo, interes, monto)
		resultado = ((plazo/365.00) * (interes/100.00) * monto).round(2)

		return resultado
	end
end

