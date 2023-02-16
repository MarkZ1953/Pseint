Algoritmo Estructurarepetitivaparaciclofor
	Definir N Como entero;
	Definir Sueldo, Sueldomayor Como real;
	Definir Nomempleado, NomempleadoMayor Como Caracter
	
	Sueldomayor = 0;
	//Cuando se quiere localizar un valor se tiene que iniciar con un valor minimo como 0
	
	Escribir "Ingrese cantidad de empleados"
	Leer N;
	
	Para i<-1 Hasta N Con Paso 1 Hacer 
		//Como tal este proceso se lee = Desde 1 hasta N (Numero ingresado de empleados) se tiene que hacer, y 
		// se ira incrementando de 1 en 1
		Escribir "Nombre del empleado";
		Leer Nomempleado
		Escribir "Sueldo de empleado";
		Leer Sueldo
		
		Si Sueldo > Sueldomayor Entonces
			Sueldomayor = Sueldo;
			NomempleadoMayor = Nomempleado;
		FinSi
		
	Fin Para
	
	Escribir "El empleado con el Mayor sueldo es ", NomempleadoMayor;
	Escribir "Sueldo : ", Sueldomayor;

FinAlgoritmo