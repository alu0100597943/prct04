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

#FUNCION MOSTRAR
def show_matrix(m)
	c_fil = 0
	while(c_fil < m.length)
		puts "#{m[c_fil]} "
		c_fil = c_fil + 1
	end
	puts
end

#=======
#<<<<<<< HEAD
#>>>>>>> be9af5ee10c02b3a58af01664a468689945c9269

#FUNCION MULTIPLICACION
def op_multi(a,b)
	result=Array.new(a.length){Array.new(b.length){|i| 0}}
	fil = 0
	col = 0
	x_col = 0
	while(fil < a.length)
		col = 0
		while(col < b.length)
			aux = 0
			x_col = 0
			while(x_col < a.length)
				result[fil][col] += (a[fil][x_col] * b[x_col][col])
				x_col += 1
			end
			col += 1
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


#_MENU
intro = true
while intro == true
	puts "Que desea hacer Sumar(1) o Multiplicacion(2)?"
	STDOUT.flush
	op=gets.chomp
	if op == "1"
		op="suma"
		intro=false
	elsif op == "2"
		op="multiplicacion"
		intro=false
	else
		puts "Entrada erronea..."
	end
end
#________________

#_Recogida de datos
puts "Indique el orden de las matrices (CUADRADAS)"
STDOUT.flush
orden=gets.chomp

matrix1 = rand_matrix(orden.to_i)
matrix2 = rand_matrix(orden.to_i)

puts "La matriz A es: "
show_matrix(matrix1)

puts "La matriz B es: "
show_matrix(matrix2)

if op=="suma"
	result=op_suma(matrix1,matrix2)
	puts "La matriz resultante es: "
	show_matrix(result)
elsif op=="multiplicacion"
	result=op_multi(matrix1,matrix2)
	puts "La matriz resultante es: "
	show_matrix(result)
end
