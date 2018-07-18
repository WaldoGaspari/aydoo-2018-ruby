Repositorio Personal de Waldo Gaspari


[![Build Status](https://travis-ci.org/WaldoGaspari/aydoo-2018-ruby.svg?branch=master)](https://travis-ci.org/WaldoGaspari/aydoo-2018-ruby)


Aclaraciones sobre el ejercicio final Finanzas:

- La aplicacion corre con el comando ruby finanzas.rb. Luego se ingresan los parametros deseados para obtener la salida correspondiente.
- Se realiza diagrama de clases y diagrama de secuencia correspondientes.
- Se obtienen diferentes tipos de excepciones en el programa, a saber:

  - Para el caso de los plazos fijos: 
	- El monto minimo deberá ser mayor o igual a $ 100.
	- El interes deberá ser un numero mayor o igual a 1.
	- El plazo deberá ser como minimo 30 dias.
	- En el caso del plazo fijo precancelable, el plazo real NO deberá ser mayor al plazo estipulado al principio.

  - Para el caso de la compra de dolares:
	- El monto minimo deberá ser mayor o igual a $ 100.
	- Tanto la cotizacion inicial como la final deberan ser numeros mayores o iguales a 1.

  - Para la clase Finanzas tambien se generan excepciones de acuerdo a la entrada ingresada.

