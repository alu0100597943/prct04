=begin
Practica 04 de LPP
Autores:
	Francisco J. Alderete González
	Néstor Álvarez Díaz


Funciones a definir:
	rand_matrix(d): crea un array de dxd
			y lo rellena con Rand

	show_matrix(m): muestra la matriz que se
			le pasa por parametros

	op_suma(a,b):	realiza la suma de las
			matrices a y b

	op_multi(a,b):	realiza la multiplicacion
			de las matrices a y b

	menu:		un menu para seleccionar
			si queremos sumar o multiplicar

=end

#FUNCION LLENAR MATRIZ RANDOM
def rand_matrix(d)
	m = Array.new(d){|i| nil}
	cont = 0
	while(cont < d)
		p_rand = Random.new()
		m[cont] = Array.new(d){|j| p_rand.rand(9)}
		cont = cont + 1
	end
	m
end


#FUNCION SUMA
def op_suma(a,b)
	result=Array.new(a.length){Array.new(b.length)}
	i = 0
	j = 0
	while i < a.length
		j = 0
		while j < b.length
			result[i][j] = a[i][j] + b[i][j]
			j += 1
		end
		i += 1
	end
	return result

end

