Algoritmo Ejercicio8FormulaGeneraloCuadratica
	
	//Declaracion de variables
	Definir a, b, c Como Real;
	Definir  raizunica, disc, x1, x2 como real;
	//raizunica = c/b;
	Escribir "Ingrese el valor de a: ";
	Leer a;
	Escribir "Ingrese el valor de b: ";
	Leer b;
	Escribir "Ingrese el valor de c: ";
	Leer c;
	//a)	Si a es igual a 0 y b es igual a 0,  "L
	si a= 0 y b = 0 Entonces
		Escribir "La ecuación n es degenerada"
	SiNo
		//	b)	Si a es igual a 0 y b no es igual a 0, 
		//existe una raíz única con valor c/b. 
		si a = 0 y b <> 0 Entonces
			Escribir " Existe una Raiz Unica con valor: ", c/b;
		SiNo//discriminante
		disc = b^2 - 4 * a * c;
		si disc >= 0 entonces
			Escribir "Existen dos raices ";
			Escribir " Raiz X1 = ",( -b + rc(disc) )/ (2 * a);
			Escribir " Raiz X2 = ",( -b - rc(disc) )/ (2 * a);
		SiNo
			si disc = 0 Entonces
				Escribir "Existen una raiz Real";
				Escribir " Raiz X1 = ",( -b + rc(disc) )/ (2 * a);
				Escribir " Raiz X2 = ",( -b - rc(disc) )/ (2 * a);
			SiNo
				si disc < 0 Entonces
					Escribir "Existen dos raices completjas";
					Escribir " Raiz X1 = ", -b / (2 * a), " + ", (rc(abs(disc)))/(2*a)," i ";
					Escribir " Raiz X2 = ", -b / (2 * a), " - ", (rc(abs(disc)))/(2*a)," i ";				
				FinSi
			FinSi
		FinSi
	FinSi
FinSi

FinAlgoritmo