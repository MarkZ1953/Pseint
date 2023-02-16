Algoritmo Estructurarepetitivahacermientras
	Definir N, num, i, Sumapar, Sumaimpar, Cuentapar, Cuentaimpar Como Entero;
	i=1;
	Sumapar = 0;
	Sumaimpar = 0;
	Cuentaimpar = 0;
	Cuentapar = 0;
	
	Escribir "Cuantos numeros enteros positivos ingresara : ";
	Leer N;
	Repetir
		Escribir "Ingrese el numero ", i, " : ";
		Leer num;
		si ( num MOD 2 = 0 ) Entonces
			Sumapar = Sumapar + num;
			Cuentapar = Cuentapar + 1;
		SiNo
			Sumaimpar = Sumaimpar + num;
			Cuentaimpar = Cuentaimpar + 1;
		FinSi
		i = i + 1; //i++
	Hasta Que (i=N)
	Escribir "Total de numeros pares ", Cuentapar;
	Escribir "Suma total de numeros pares ", Sumapar;
	Escribir "Total de numeros impares ",  Cuentaimpar;
	Escribir "Suma total de numeros impares ", Sumaimpar;
	
	
FinAlgoritmo
