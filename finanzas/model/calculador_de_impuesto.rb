class CalculadorDeImpuesto

	def calcular_impuesto_para_empresa (ganancia)
		if (ganancia < 20000)
			resultado = 0.0
		end

		if (ganancia >= 20000 && ganancia < 50000)
			resultado = (ganancia*0.05).round(2)
		end

		if (ganancia >= 50000 && ganancia < 100000)
			resultado = (ganancia*0.1).round(2)
		end

		if (ganancia >= 100000 && ganancia < 500000)
			resultado = (ganancia*0.15).round(2)
		end

		if (ganancia >= 500000)
			resultado = (ganancia*0.2).round(2)
		end

		return resultado 
	end

	def calcular_impuesto_para_individuo (ganancia)
		if (ganancia < 50000)
			resultado = 0.0
		end

		if (ganancia >= 50000 && ganancia < 100000)
			resultado = (ganancia*0.05).round(2)
		end

		if (ganancia >= 100000 && ganancia < 500000)
			resultado = (ganancia*0.08).round(2)
		end

		if (ganancia >= 500000)
			resultado = (ganancia*0.1).round(2)
		end

		return resultado 
	end
end