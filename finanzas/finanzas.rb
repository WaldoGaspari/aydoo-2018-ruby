require_relative '../finanzas/model/compra_dolares'
require_relative '../finanzas/model/plazo_fijo'

class Finanzas

	entrada = gets.chomp
	entrada_separada = entrada.split
	inversor = entrada_separada[1]
	posicion = 2
	total_ganancias = 0
	compraDolares = CompraDolares.new
	plazo_fijo = PlazoFijo.new
	while posicion < entrada_separada.length do
		parametros = entrada_separada[posicion].split(',')

		if (parametros[0] == "dol")	
			resultado = compraDolares.calcular_ganancia(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i)
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
	
	puts " ganancia: #{total_ganancias} "

end