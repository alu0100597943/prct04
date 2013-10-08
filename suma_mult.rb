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

#<<<<<<< HEAD

#FUNCION MULTIPLICACION
def op_multi(a,b)
	result=Array.new(a.length){Array.new(b.length){|i| 0}}
	fil = 0
	col = 0
	x_col = 0
	while(fil < a.length)
		x_col = 0
		while(x_col < b.length)
			aux = 0
			col = 0
			while(col < a.length)
				result[fil][col] += (a[fil][col] * b[col][x_col])
				col += 1
			end
			x_col += 1
		end
		fil += 1
	end
	result
end

#=======

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

#>>>>>>> suma
