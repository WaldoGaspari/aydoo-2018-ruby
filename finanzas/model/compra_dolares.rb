require_relative '../model/monto_compra_dolares_exception'

class CompraDolares

	def calcular_ganancia (monto, cotizacion_inicial, cotizacion_final)
		if (monto < 100) 
			MontoCompraDolaresException.new
		end

		if (cotizacion_final <= cotizacion_inicial) 
			resultado = 0.0
		else 
			resultado = (((monto.to_f / cotizacion_inicial) * cotizacion_final) - monto).round(2)
		end

		return resultado
	end
end
