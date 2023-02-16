Funcion ponermayus <- mayus ( a )
	long = Longitud(a)
	Para i = 1 Hasta long Hacer
		Si i = 1 Entonces
			conc = Concatenar(conc,Mayusculas(Subcadena(a,i,i)))
		SiNo
			conc = Concatenar(conc,Minusculas(Subcadena(a,i,i)))
		FinSi
	FinPara
	ponermayus = conc
Fin Funcion

Funcion conversiones <- conversion ( 3 )
	Limpiar Pantalla
	Escribir "Ingrese una medida (m)"
	Leer medida
	Escribir ""
	Escribir "Equivalentes de ",medida,"m"
	Escribir ""
	Dimension conv[5]
	//orden de conversiones = centimentros,yardas,pulgadas y pies
	conv[1] = medida
	conv[2] = 100
	conv[3] = 1.09361
	conv[4] = 39.3701
	conv[5] = 3.28084
	
	Escribir "| Metros(m) | Centimetros(cm) | Yardas(yd) | Pulgadas(in) | Pies(fts) |"
	Para i = 1 Hasta 5 Hacer
		Si i = 1 Entonces
			Escribir "|   ",conv[i],"    " Sin Saltar
		SiNo
			Escribir "|   ",reducir(medida*conv[i]),"    " Sin Saltar
		FinSi
	FinPara
	Escribir "|"
Fin Funcion


Funcion reduccion <- reducir ( a )
	Definir reduccion2 Como Caracter
	x = ConvertirATexto(a)
	Dimension red[20]
	
	long = Longitud(x)
	
	Para i = 1 Hasta long Hacer
		conc = ""
		red[i] = Subcadena(x,i,i)
		Si red[3] = "." Entonces
			Para h = 1 Hasta 5 Hacer
				red[h] = Subcadena(x,h,h)
				conc = Concatenar(conc,red[h])
			FinPara
		SiNo
			Si red[4] = "." Entonces
				Para h = 1 Hasta 6 Hacer
					red[h] = Subcadena(x,h,h)
					conc = Concatenar(conc,red[h])
				FinPara
			SiNo
				Si red[2] = "." Entonces
					Para h = 1 Hasta 5 Hacer
						red[h] = Subcadena(x,h,h)
						conc = Concatenar(conc,red[h])
					FinPara
				SiNo
					Si red[5] = "." Entonces
						Para h = 1 Hasta 6 Hacer
							red[h] = Subcadena(x,h,h)
							conc = Concatenar(conc,red[h])
						FinPara
					SiNo
						Si red[6] = "." Entonces
							Para h = 1 Hasta 7 Hacer
								red[h] = Subcadena(x,h,h)
								conc = Concatenar(conc,red[h])
							FinPara
						SiNo
							conc = x
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
	FinPara
	reduccion = conc
Fin Funcion

Funcion clasesalgoritmia <- arreglos ( 2 )
	abecedario = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
	longabc = Longitud(abecedario)
	Limpiar Pantalla
	Dimension cantidad[2]
	Para i = 1 Hasta 2 Hacer
		Limpiar Pantalla
		Escribir "Ingrese la cantidad de estudiantes en la clase de algoritmia N°",i
		Leer cantidad[i]
		
		Si i = 1 Entonces
			Dimension noms1[cantidad[1]]
			Para j = 1 Hasta cantidad[1] Hacer
				Escribir "Ingrese el nombre del estudiante N°",j
				Leer r
				validar = Falso
				Para h = 1 Hasta cantidad[1] Hacer
					Si Mayusculas(r) = Mayusculas(noms1[h]) Entonces
						validar = Verdadero
					FinSi
				FinPara
				Si validar = Falso Entonces
					noms1[j] = r
				SiNo
					Escribir ""
					Escribir "El nombre ",r," esta repetido"
					Escribir ""
					j = j - 1
				FinSi
			FinPara
			Escribir ""
		SiNo
			validar = Falso
			Dimension noms2[cantidad[2]]
			
			Para j = 1 Hasta cantidad[2] Hacer
				Escribir "Ingrese el nombre del estudiante N°",j
				Leer r
				validar = Falso
				Para h = 1 Hasta cantidad[2] Hacer
					Si Mayusculas(r) = Mayusculas(noms2[h]) Entonces
						validar = Verdadero
					FinSi
				FinPara
				Si validar = Falso Entonces
					noms2[j] = r
				SiNo
					Escribir ""
					Escribir "El nombre ",r," esta repetido"
					Escribir ""
					j = j - 1
				FinSi
			FinPara
		FinSi
	FinPara
	Limpiar Pantalla
	Escribir ""
	Escribir "Nombres Ordenados Alfabeticamente Clase N°1"
	Escribir ""
	
	Para i = 1 Hasta cantidad[1] Hacer
		Para j = 1 Hasta cantidad[1] Hacer
			Si noms1[i] < noms1[j] Entonces
				temp = noms1[i]
				noms1[i] = noms1[j]
				noms1[j] = temp
			FinSi
		FinPara
	FinPara
	Para i = 1 Hasta cantidad[1] Hacer
		Escribir i,".",noms1[i]
	FinPara
	Escribir ""
	Escribir "Nombres Ordenados Alfabeticamente Clase N°2"
	Escribir ""
	
	Para i = 1 Hasta cantidad[2] Hacer
		Para j = 1 Hasta cantidad[2] Hacer
			Si noms2[i] < noms2[j] Entonces
				temp = noms2[i]
				noms2[i] = noms2[j]
				noms2[j] = temp
			FinSi
		FinPara
	FinPara
	Para i = 1 Hasta cantidad[2] Hacer
		Escribir i,".",noms2[i]
	FinPara
	
	x = 1
	Escribir ""
	Escribir "Nombres en comun"
	Escribir ""
	Para i = 1 Hasta cantidad[1] Hacer
		r = noms1[i]
		Para j = 1 Hasta cantidad[2] Hacer
			Si Mayusculas(r) = Mayusculas(noms2[j]) Entonces
				Escribir x,".",mayus(noms2[j])
				x = x + 1
			FinSi
		FinPara
	FinPara
	
Fin Funcion

Funcion cubomagico <- cubo ( 3 )
	Dimension matriz[4,4],filas[4],columnas[4]
	Para i = 1 Hasta 4 Hacer
		Para j = 1 Hasta 4 Hacer
			Escribir "Ingrese los valores en la Fila (",i,") y la Columna (",j,")"
			Leer matriz[i,j]
			sumafilas = 0
			sumacolumnas = 0
			Segun i Hacer
				1:
					sumafilas = sumafilas + matriz[i,j]
				2:
					sumafilas = sumafilas + matriz[i,j]
				3:
					sumafilas = sumafilas + matriz[i,j]
				4:
					sumafilas = sumafilas + matriz[i,j]
			FinSegun
			filas[i] = filas[i] + sumafilas
			Segun j Hacer
				1:
					sumacolumnas = sumacolumnas + matriz[i,j]
				2:
					sumacolumnas = sumacolumnas + matriz[i,j]
				3:
					sumacolumnas = sumacolumnas + matriz[i,j]
				4:
					sumacolumnas = sumacolumnas + matriz[i,j]
			FinSegun
			columnas[i] = columnas[i] + sumacolumnas
			Si i = j Entonces
				sumadiagonal = sumadiagonal + matriz[i,j]
			FinSi
		FinPara
	FinPara
	Limpiar Pantalla
	Escribir "Valores de la Matriz"
	Para i = 1 Hasta 4 Hacer
		Para j = 1 Hasta 4 Hacer
			Escribir "(",matriz[i,j],")" Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Para i = 1 Hasta 4 Hacer
		Si sumadiagonal = filas[i] y sumadiagonal = columnas[i] Entonces
			c1 = c1 + 1
		FinSi
	FinPara
	Si c1 = 4 Entonces
		Escribir "Es un cubo magico"
	SiNo
		Escribir "No es un cubo magico"
	FinSi
Fin Funcion

Algoritmo Ejercicio_Final
	
	Mientras eleccion <> 4 Hacer
		Escribir "Escoja una opcion"
		Escribir "1. Conversiones"
		Escribir "2. Arreglos"
		Escribir "3. Matrices"
		Escribir "4. Salir"
		Leer eleccion
		Segun eleccion hacer	
			1:
				Escribir conversion(1)
			2:
				Escribir arreglos(2)
			3:
				Escribir cubo(3)
			4:
				Escribir "Saliendo..."
		FinSegun
	FinMientras
FinAlgoritmo
