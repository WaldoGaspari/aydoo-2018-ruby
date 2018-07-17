require_relative '../finanzas/model/compra_dolares'
require_relative '../finanzas/model/plazo_fijo'
require_relative '../finanzas/model/calculador_de_impuesto'

class Finanzas

	entrada = gets.chomp
	entrada_separada = entrada.split
	inversor = entrada_separada[1]
	posicion = 2
	total_ganancias = 0
	total_impuesto = 0
	plazo_fijo = PlazoFijo.new
	calculador_impuesto = CalculadorDeImpuesto.new
	while posicion < entrada_separada.length do
		parametros = entrada_separada[posicion].split(',')

		if (parametros[0] == "dol")	
			resultado = (CompraDolares.new).calcular_ganancia(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i)
		end

		if (parametros[0] == "pft")
			resultado = plazo_fijo.calcular_ganancia_del_plazo_fijo(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i)
		end

		if (parametros[0] == "pfp")
			resultado = plazo_fijo.calcular_ganancia_de_plazo_fijo_precancelable(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i, parametros[4].to_i)
		end

		total_ganancias += resultado
		posicion += 1
	end

	if (inversor == "ind") 
		total_impuesto = calculador_impuesto.calcular_impuesto_para_individuo(total_ganancias)
	else 
		total_impuesto = calculador_impuesto.calcular_impuesto_para_empresa(total_ganancias)
	end
	
	puts " ganancia: #{total_ganancias}, impuesto: #{total_impuesto} "

end