class CompraDolares

	def calcular_ganancia (monto, cotizacion_inicial, cotizacion_final)
		resultado = (((monto.to_f / cotizacion_inicial) * cotizacion_final) - monto).round(2)
		return resultado
	end
end
