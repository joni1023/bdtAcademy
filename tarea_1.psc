Algoritmo tarea_1
	Definir total Como Real
	Definir i Como Entero
	total <- 0
	definir_ingresos(i,"indique cantidad de ingresos")
	Para i<-1 Hasta i Hacer
		ingresar_datos(total,"¿Cuanto quieres aportar?")
	Fin Para
	Escribir "Total: ", total
	
FinAlgoritmo

Funcion definir_ingresos(i Por Referencia,text)
	Definir j Como Entero
	Escribir text
	Leer i
	Para j<-1 Hasta 1 Con Paso paso Hacer
		si i > 0 Entonces
			j <- i+1
		SiNo
			j<-1
			Escribir "Error, " ,text
			Leer i
		FinSi
	Fin Para
FinFuncion

Funcion ingresar_datos (total Por Referencia, text)
	Definir import Como Real
	Escribir text
	Leer import
	validar_importe(total, import,'Valor inválido, ingresar nuevamente')
Fin Funcion

Funcion validar_importe (total Por Referencia, imp Por Referencia, error)
	Si imp <= 0 Entonces
		Escribir error
		ingresar_datos(total,"¿Cuanto quieres aportar?")
	SiNo
		total <- total + imp
	FinSi
Fin Funcion
	