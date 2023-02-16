------------------------------------------------------------------------------------------------------------------------------------------------------------

Segun {variable_numerica} Hacer
		opcion_1:
			{secuencia_de_acciones_1}
		opcion_2:
			secuencia_de_acciones_2}
		opcion_3:
			{secuencia_de_acciones_3}
		De Otro Modo:
			{secuencia_de_acciones_dom}
	Fin Segun


- {variable_numerica}: complete aquí la variable cuyo contenido se debe evaluar para decidir que acciones ejecutar. 

- {opcion_n} y {secuencia_de_acciones_n}: reemplaze {opcion_n} por un posible valores para {variable_numerica} y complete {secuencia_de_acciones_n}
con las instrucciones a ejecutar en caso de que el valor coincida. Puede agregar {opcion_n} y {secuencia_de_acciones_n} tantas veces como sea necesario
para cubrir los casos que correspondan. Puede asociar más de una opción a un mismo grupo de acciones colocando en {opcion_n} la lista de valores separados 
por comas. 

- {secuencia_de_acciones_dom}: complete aqui el conjunto de instrucciones a ejecutar si el valor de {variable_numerica} no coincide con ninguna de 
las opciones anteriormente planteadas. Si no desea incluir un conjunto de acciones para estos casos elimine esta linea y la anterior (De Otro Modo:). 

------------------------------------------------------------------------------------------------------------------------------------------------------------