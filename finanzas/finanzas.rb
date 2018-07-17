require_relative '../finanzas/model/compra_dolares'
require_relative '../finanzas/model/plazo_fijo'
require_relative '../finanzas/model/calculador_de_impuesto'
require_relative '../finanzas/model/cantidad_de_parametros_de_entrada_exception'
require_relative '../finanzas/model/parametro_tipo_de_inversor_exception'

class Finanzas

	entrada = gets.chomp
	entrada_separada = entrada.split

	if (entrada_separada.length <= 2) 
		CantidadDeParametrosDeEntradaException.new
	end

	if (entrada_separada[1] != "ind" && entrada_separada[1] != "emp") 
		ParametroTipoDeInversorException.new
	end	

	inversor = entrada_separada[1]
	posicion = 2
	total_ganancias = 0
	total_impuesto = 0 
	while posicion < entrada_separada.length do
		parametros = entrada_separada[posicion].split(',')

		if (parametros[0] == "dol")	
			resultado = (CompraDolares.new).calcular_ganancia(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i)
		end

		if (parametros[0] == "pft")
			resultado = (PlazoFijo.new).calcular_ganancia_del_plazo_fijo(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i)
		end

		if (parametros[0] == "pfp")
			resultado = (PlazoFijo.new).calcular_ganancia_de_plazo_fijo_precancelable(parametros[1].to_i, parametros[2].to_i, parametros[3].to_i, parametros[4].to_i)
		end

		total_ganancias += resultado
		posicion += 1
	end

	if (inversor == "ind") 
		total_impuesto = (CalculadorDeImpuesto.new).calcular_impuesto_para_individuo(total_ganancias)
	else 
		total_impuesto = (CalculadorDeImpuesto.new).calcular_impuesto_para_empresa(total_ganancias)
	end
	
	puts " ganancia: #{total_ganancias}, impuesto: #{total_impuesto} "

end