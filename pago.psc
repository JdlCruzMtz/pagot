Algoritmo sin_titulo
		Definir nombre, direccion Como Cadena
		Definir diasTrabajados, horasExtras, salarioBase, pagoHorasExtras, totalDeducciones, totalAPagar Como Real
		Definir impuestoIMSS, impuestoISR, cuotaSindical, salarioDiario, pagoHora  Como Real
		
		Escribir "Ingrese el nombre del trabajador: "
		Leer nombre
		Escribir "Ingrese la dirección del trabajador: "
		Leer direccion
		Escribir "Ingrese los días trabajados: "
		Leer diasTrabajados
		Escribir "Ingrese las horas extras trabajadas: "
		Leer horasExtras
		Escribir "Ingrese el salario base semanal: "
		Leer salarioBase
		
		
		
		Si horasExtras <= 8 Entonces
			pagoHorasExtras <- salarioBase * 2 / 4
		SiNo
			pagoHorasExtras <- salarioBase * 3 / 4
		Fin Si
		
		Si salarioBase <= 3500 Entonces
			impuestoIMSS <- salarioBase * 0.03
		SiNo
			impuestoIMSS <- salarioBase * 0.04
		Fin Si
		
		Si salarioBase <= 3000 Entonces
			impuestoISR <- salarioBase * 0.05
		SiNo
			impuestoISR <- salarioBase * 0.06
		Fin Si
		
		cuotaSindical <- salarioBase * 0.03
		
		totalDeducciones <- impuestoIMSS + impuestoISR + cuotaSindical
		totalAPagar <- salarioBase + pagoHorasExtras - totalDeducciones
		
		Escribir "Nombre del trabajador: ", nombre
		Escribir "Dirección: ", direccion
		Escribir "Salario base semanal: $", salarioBase
		Escribir "Pago por horas extras: $", pagoHorasExtras
		Escribir "Deducción por IMSS: $", impuestoIMSS
		Escribir "Deducción por ISR: $", impuestoISR
		Escribir "Cuota sindical: $", cuotaSindical
		Escribir "Total de deducciones: $", totalDeducciones
		Escribir "Pago total: $", totalAPagar
	

FinAlgoritmo
