class PlazoFijo

	def calcular_ganancia_del_plazo_fijo (plazo, interes, monto)
		resultado = (plazo/365) * (interes/100.00) * monto

		return resultado
	end
end

