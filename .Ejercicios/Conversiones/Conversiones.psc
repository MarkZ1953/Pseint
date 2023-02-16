Funcion voltearnum <- voltear ( a )
	length<-longitud(a)
	recorrido<-length
	Para i<-1 Hasta length Con Paso 1 Hacer
		subca=subcadena(a,recorrido,recorrido)
		conc=concatenar(conc,subca)
		recorrido<-recorrido-1
	Fin Para
	voltearnum=conc
Fin Funcion

Algoritmo Conversiones
	Mientras user<>5 Hacer
		Escribir "Menu de opciones"
		Escribir ""
		Escribir "Escriba un numero del 1 al 5 para hacer:"
		Escribir "1. Convertir a decimal"
		Escribir "2. Convertir a binario"
		escribir "3. Convertir a hexal"
		escribir "4. Convertir a octal"
		escribir "5. Salir"
		
		leer user
		
		Si user=1 Entonces
			Escribir ""
			Escribir "Digite cualquier numero para saber si es decimal"
			leer num1
			
			length<-longitud(num1)
			
			recorrido<-1
			validador<-falso
			Mientras recorrido<=length Hacer
				cadena<-subcadena(num1,recorrido,recorrido)
				Si cadena="." o cadena="," Entonces
					validador<-verdadero
				Fin Si
				recorrido<-recorrido+1
			Fin Mientras
			
			Si validador=verdadero Entonces
				escribir "El numero ",num1," es decimal."
			SiNo
				escribir "El numero ",num1," NO es decimal."
			Fin Si
			Escribir ""
		FinSi
		
		Si user=2 Entonces
			Escribir ""
			escribir "Digite un numero para convertirlo a binario."
			leer numbin
			
			cociente=1
			validador=falso
			Mientras cociente<>0 Hacer
				Si validador=falso Entonces
					cociente<-trunc(numbin/2)
					residuo<-numbin mod 2
					conc=Concatenar(conc,ConvertirATexto(residuo))
					validador=Verdadero
				Fin Si
				residuo<-cociente mod 2
				cociente<-trunc(cociente/2)
				conc=concatenar(conc,ConvertirATexto(residuo))
			Fin Mientras
			Escribir voltear(conc)
		Fin Si
		
		Si user=3 Entonces
			Escribir "Digite un numero para convertilo a hexadecimal."
			leer numhexa
			
			cociente=1
			validador=Falso
			Mientras cociente<>0 Hacer
				Si validador=falso Entonces
					cociente<-trunc(numhexa/16)
					residuo<-numhexa mod 16
					Segun residuo Hacer
						10:
							conc=Concatenar(conc,"A")
						11:
							conc=Concatenar(conc,"B")
						12:
							conc=concatenar(conc,"C")
						13:
							conc=concatenar(conc,"D")
						13:
							conc=Concatenar(conc,"E")
						15:
							conc=concatenar(conc,"F")
						De Otro Modo:
							conc=concatenar(conc,ConvertirATexto(residuo))
					Fin Segun
					validador<-Verdadero
				Fin Si
				residuo<-cociente mod 16
				Segun residuo Hacer
					10:
						conc=Concatenar(conc,"A")
					11:
						conc=Concatenar(conc,"B")
					12:
						conc=concatenar(conc,"C")
					13:
						conc=concatenar(conc,"D")
					13:
						conc=Concatenar(conc,"E")
					15:
						conc=concatenar(conc,"F")
					De Otro Modo:
						conc=concatenar(conc,ConvertirATexto(residuo))
				FinSegun
				cociente<-trunc(cociente/16)
			Fin Mientras
			Escribir "El numero ",numhexa, " convertido a hexadecimal es: ",voltear(conc)
			Escribir ""
		Fin Si
		// Hola
		Si user=4 Entonces
			Escribir "Digite un numero para convertilo a octal."
			leer numoctal
			cociente=1
			Mientras cociente<>0 Hacer
				Si validador=falso Entonces
					cociente<-trunc(numoctal/8)
					residuo<-numoctal mod 8
					conc<-concatenar(conc,ConvertirATexto(residuo))
					validador<-Verdadero
				Fin Si
				residuo<-cociente mod 8
				conc=concatenar(conc,ConvertirATexto(residuo))
				cociente<-trunc(cociente/8)
			Fin Mientras
			Escribir "El numero ",numoctal," convertido a octal es: ",voltear(conc)
			Escribir ""
		Fin Si
		
		Si user=5 Entonces
			Escribir "Saliendo..."
		Fin Si
	Fin Mientras
FinAlgoritmo
