Algoritmo EjercicioFinal
	Escribir "MLR SOFT"
	Escribir ""
	
	Escribir "Ingrese la cantidad de empleados"
	Leer cant
	
	salariomin = 1000000
	auxt = 117172
	
	Dimension nombre[cant],cedula[cant],sexo[cant],edad[cant],estatura[cant],peso[cant],cargo[cant],salariom[cant],totals[cant],totalded[cant],aux[cant]
	
	Para i = 1 Hasta cant Hacer
		Escribir "Ingrese el nombre del empleado N°",i
		Leer nombre[i]
		Escribir "Ingrese la cedula del empleado N°",i
		Leer cedula[i]
		Escribir "Ingrese el sexo del empleado N°",i
		Leer sexo[i]
		
		Si Minusculas(sexo[i]) = "hombre" o Minusculas(sexo[i]) = "h" Entonces
			h = h + 1
		SiNo
			Si Minusculas(sexo[i]) = "mujer" o Minusculas(sexo[i]) = "m" Entonces
				m = m + 1
			FinSi
		FinSi
		
		Escribir "Ingrese la edad del empleado N°",i
		Leer edad[i]
		sumaedad = sumaedad + edad[i]
		Escribir "Ingrese el estatura del empleado N°",i
		Leer estatura[i]
		sumaest = sumaest + estatura[i]
		Escribir "Ingrese el peso del empleado N°",i
		Leer peso[i]
		Si peso[i] > 80 Entonces
			p = p + 1
		FinSi
		Escribir "Ingrese el cargo del empleado N°",i
		Leer cargo[i]
		Escribir "Ingrese el salario del empleado N°",i
		Leer salariom[i]
		descsalud = salariom[i]*0.04
		totalsalud = (salariom[i]*0.04) + totalsalud
		aportp = salariom[i]*0.04
		totalaporte = totalaporte + (salariom[i]*0.04)
		totals[i] = salariom[i] - descsalud- aportp
		Si salariom[i] >= salariomin*4 Entonces
			fondos = salariom[i]*0.01
			totalfondos = totalfondos + (salariom[i]*0.01)
		SiNo
			fondos = 0
		FinSi
		Si salariom[i] < salariomin*2 Entonces
			aux[i] = auxt
			c = c + 1
			totalaux = auxt*c
		SiNo
			aux[i] = 0
		FinSi
		totals[i] = salariom[i] - descsalud- aportp - fondos + aux[i]
		totalded[i] = descsalud + aportp + fondos
		totalnomina = totalnomina + totals[i]
	FinPara
	
	promedioest = sumaest/cant
	promedioedad = sumaedad/cant
	
	Escribir ""
	Escribir "---------------------------------------------------------------------------------------------------------------------------------------------------------"
	Escribir "| NOMBRE DEL TRABAJADOR | CEDULA | SALARIO MENSUAL | AUXILIO DE TRANSPORTE | TOTAL DEDUCCIONES | TOTAL A PAGAR | "
	Escribir "---------------------------------------------------------------------------------------------------------------------------------------------------------"
	Para i = 1 Hasta cant Hacer
		Escribir "| ",nombre[i]," | ",cedula[i]," | $",salariom[i]," | $",aux[i]," | Total Deducciones : $",totalded[i]," | $",totals[i]," |" 
		Escribir "---------------------------------------------------------------------------------------------------------------------------------------------------------"
	FinPara
	Escribir ""
	//-------------------------------------------------------------------
	Escribir "---------- RESULTADOS FINALES --------------"
	Escribir ""
	Escribir "| TOTAL NOMINA : $",totalnomina," | TOTAL DESCUENTOS POR SALUD DE LOS EMPLEADOS : $",totalsalud," |"
	Escribir "| TOTAL DESCUENTO POR APORTES DE PENSION DE LOS EMPLEADOS : $",totalaporte," |"
	Escribir "| TOTAL APORTES FONDOS DE SOLIDARIDAD PENSIONAL : $",totalfondos," |"
	Escribir "| TOTAL AUXILIOS DE TRANSPORTE : $",totalaux," | "
	Escribir "| EMPLEADOS HOMBRES : ",h," | EMPLEADOS MUJERES : ",m," |"
	Escribir "| PROMEDIO DE ESTATURA : ",promedioest," | PROMEDIO DE EDAD : ",promedioedad," | EMPLEADOS CON UN PESO SUPERIOR A 80KG : ",p," |"
FinAlgoritmo
