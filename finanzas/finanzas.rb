require_relative '../finanzas/model/compra_dolares'

class Finanzas

	compraDolares = CompraDolares.new
	entrada = gets.chomp
	entrada_separada = entrada.split
	parametros = entrada_separada[2].split(',')
	uno = parametros[1].to_i
	dos = parametros[2].to_i
	tres = parametros[3].to_i

	resultado = (compraDolares.calcular_ganancia(uno, dos, tres))
	puts " ganancia: #{resultado} "

end