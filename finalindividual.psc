Algoritmo poker_individual
	
	Definir nombre Como Caracter
	Definir Trebol, Picas, Corazones, Diamantes Como Caracter
	
	Definir baraja, mesa, entrar Como Entero
	Definir continuar1,  continuar2, continuar3, continuar4 Como Entero
	Definir mano1, mano2, mano3, mano4 Como Entero
	Definir seguir01, seguir02, seguir11, seguir12, seguir21, seguir22, seguir31, seguir32, seguir41, seguir42 Como Entero
	Definir valorinicial, subidamano1, subidamano2, subidamano3, subidamano4  Como Entero 
	Definir valorinicial01, subidamano01, subidamano02, subidamano03, subidamano04  Como Entero 
	Definir respuestafinal Como Entero
	Definir puntofinalprincipal, puntopricipalcrupier Como Entero 
	Definir Cartaalta, Doble, Doblepareja, Trio, Escalera, Full, Poker, Escalerareal, Escaleradecolor Como Entero
	
	Dimension baraja[53]
	Dimension cartas[14]
	Definir i, cuenta Como Entero

	//creador de baraja mas desarrollo de palos 
	i=0
	cuenta=1
	Esperar 2 Segundos
	para i<-0 hasta 52 con paso 1 Hacer
		baraja[i+1]=cuenta
		cuenta=cuenta + 1
		Si cuenta >= 14 Entonces
			cuenta=1
		FinSi
	FinPara
	
	//hacemos que el jugador ingrese tanto con nombre como con sus fichas
Repetir
	Escribir "Hola jugador desea entrar en mesa? 1 significa si y 2 significa no"
	leer mesa
	si mesa=1 Entonces
		Escribir "Ingrese su nombre"
		Leer nombre
		si mesa=1 entonces
			Escribir "Desea entrar en la mano? 1 significa si y 2 significa no"
			leer entrar
			si entrar=1 Entonces
				escribir "Ingrse el valor con el que inicia"
				leer valorinicial
			fin si
		fin si
	Fin Si 
	
	//aca colocamos las dos cartas en mesa, otras 2 para el jugador y otras ultimas 2 para el crupier de las cuales una no se ve 
	carta1=azar(13+1)
	carta2=azar(13+1)
	carta3=azar(13+1)
	carta4=azar(13+1)
	carta5=azar(13+1)
	carta6=azar(13+1)
	palo1=azar(3+1)
	palo2=azar(3+1)
	palo3=azar(3+1)
	palo4=azar(3+1)
	palo5=azar(3+1)
	palo6=azar(3+1)
	
	si entrar=1 
		Escribir "Jugador " nombre " tiene las sig cartas, la primera es: " carta1 " de palo " palo1 " la sigiente es: " carta2 " de palo " palo2
		Escribir "Las cartas en la mesa son: " carta3 " de palo " palo3 " y " carta4 " de palo " palo4
		Escribir "El crupier tiene la siguiente carta visible " carta5 " de palo " palo5 " y falta una carta por saber su valor"
		Escribir "Para saber que palo corresponde tiene la siguiente lista: 1 <- Trebol 2 <- Picas 3 <- Corazones 4 <- Diamantes"
		Escribir "Desea continuar? 1 es si 2 es no"
		leer continuar1
		si continuar1=1 entonces
			Escribir "Desea subir la mano? 1 es si 2 es no"
			leer mano1
			si mano1=1 Entonces
				Escribir "Cuanto desea subir?"
				leer subidamano1
			FinSi
		fin si 
	finsi 
	
	//ponemos la 3 carta en mesa
	carta7=azar(13+1)
	palo7=azar(3+1)
	
	si continuar1=1 Entonces
		Escribir "La carta que se suma es: " carta7 " de palo " palo7
		Escribir "Jugador " nombre " tiene las sig cartas, la primera es: " carta1 " de palo " palo1 " la sigiente es: " carta2 " de palo " palo2
		Escribir "Las cartas en la mesa son: " carta3 " de palo " palo3 " , " carta4 " de palo " palo4 " y " carta7 " de palo " palo7
		Escribir "El crupier tiene la siguiente carta visible " carta5 " de palo " palo5 " y falta una carta por saber su valor"
		Escribir "Para saber que palo corresponde tiene la siguiente lista: 1 <- Trebol 2 <- Picas 3 <- Corazones 4 <- Diamantes"
		Escribir "Desea continuar? 1 es si 2 es no"
		leer continuar2
		si continuar2=1 entonces
			escribir "Desea subir la mano? 1 es si 2 es no"
			leer mano2
			si mano2=1 Entonces
				escribir "Cuanto desea subir?"
				leer subidamano2
			FinSi
		fin si
	Fin Si 
	
	//ponemos la 4 carta en mesa 
	carta8=azar(13+1)
	palo8=azar(3+1)
	
	si continuar2=1 Entonces
		Escribir "La carta que se suma es: " carta8 " de palo " palo8
		Escribir "Jugador " nombre " tiene las sig cartas, la primera es: " carta1 " de palo " palo1 " la sigiente es: " carta2 " de palo " palo2
		Escribir "Las cartas en la mesa son: " carta3 " de palo " palo3 " , " carta4 " de palo " palo4 " , " carta7 " de palo " palo7 " y " carta8 " de palo " palo8
		Escribir "El crupier tiene la siguiente carta visible " carta5 " de palo " palo5 " y falta una carta por saber su valor"
		Escribir "Para saber que palo corresponde tiene la siguiente lista: 1 <- Trebol 2 <- Picas 3 <- Corazones 4 <- Diamantes"
		Escribir "Desea continuar? 1 es si 2 es no"
		leer continuar3
		si continuar3=1 entonces
			escribir "Desea subir la mano? 1 es si 2 es no"
			leer mano3
			si mano3=1 Entonces
				Escribir "Cuanto desea subir?"
				leer subidamano3
			fin si
		fin si
	Fin Si 
	
	//ponemos la ultima carta osea la 5 en mesa 
	carta9=azar(13+1)
	palo9=azar(3+1)
	
	si continuar3=1 Entonces
		Escribir "La carta que se suma es: " carta9 " de palo " palo9
		Escribir "Jugador " nombre " tiene las sig cartas, la primera es: " carta1 " de palo " palo1 " la sigiente es: " carta2 " de palo " palo2
		Escribir "Las cartas en la mesa son: " carta3 " de palo " palo3 " , " carta4 " de palo " palo4 " , " carta7 " de palo " palo7 " , " carta8 " de palo " palo8 " y " carta9 " de palo " palo9
		Escribir "El crupier tiene la siguiente carta visible " carta5 " de palo " palo5 " y falta una carta por saber su valor"
		Escribir "Para saber que palo corresponde tiene la siguiente lista: 1 <- Trebol 2 <- Picas 3 <- Corazones 4 <- Diamantes"
		Escribir "Desea continuar? 1 es si 2 es no "
		leer continuar4
		si continuar4=1 entonces
			escribir "Desea subir la mano? 1 es si 2 es no"
			leer mano4
			si mano4=1 Entonces
				escribir "Cuanto desea subir?"
				leer subidamano4
				
			FinSi
		fin si
	Fin Si 
	
	//ponemos la mano como termino para que el jugador se vaya enterando
	si continuar4=1 Entonces
		
		Escribir "Bien, las cartas en la mesa son: " carta3  " de palo " palo3 " , "  carta4  " de palo " palo4  " , " carta7 "  de palo " palo7 " , " carta8 "  de palo " palo8 " , " carta9 " de palo " palo9
		escribir "La otra carta del crupier es: " carta6 " de palo " palo6 " Dando asi que este tiene las siguientes cartas: " carta5 " de palo " palo5 " y " carta6 " de palo " palo6
		escribir "Usted tiene " carta1 " de palo " palo1 " y " carta2 " de palo " palo2
		
		//contador de puntos 
		//Cartaalta <- 
		//Doble <-
		//Doblepareja <-
		//Trio <-
		//Escalera
		//Full <-
		//Poker <-
		//Escalerareal <-
		//Escaleradecolor <-
		
		
		//ponemos el ganador con sus fichas correspondientes
		si puntofinalprincipal>puntopricipalcrupier Entonces
			Escribir "El ganador es: " nombre
		SiNo
			Escribir "El ganador es: Crupier " 
		FinSi
		
		//Aca hacemos una multiplicacion para saber cuantos puntos obtuvo el ganador
		valorinicia0l=valorinicial*2
		subidamano01=subidamano1*2
		subidamano02=subidamano2*2
		subidamano03=subidamano3*2
		subidamano04=subidamano4*2
		
		//Aca hacemos una funcion para que resconosca cual fue la mayor cantidad de fichas puestas
		Si valorinicial > subidamano1 o valorinicial > subidamano2 o valorinicial > subidamano3 o valorinicial > subidamano4 Entonces
			Escribir "Este se llevara un total de: " valorinicia0l " fichas"
		sino
			si subidamano1 > valorinicial o subidamano1 > subidamano2 o subidamano1 > subidamano3 o subidamano1 > subidamano4 Entonces
				Escribir "Este se llevara un total de: " subidamano01 " fichas"
			sino 
				si  subidamano2 > valorinicial o subidamano2 > subidamano1 o subidamano2 > subidamano3 o subidamano2 > subidamano4 Entonces
					Escribir "Este se llevara un total de: " subidamano02 " fichas"
				sino 
					si subidamano3 > valorinicial o subidamano3 > subidamano1 o subidamano3 > subidamano2 o subidamano3 > subidamano4 Entonces
						Escribir "Este se llevara un total de: " subidamano03 " fichas"
					SiNo
						si subidamano4 > valorinicial o subidamano4 > subidamano1 o subidamano4 > subidamano2 o subidamano4 > subidamano3 Entonces
							Escribir "Este se llevara un total de: " subidamano04 " fichas"
						FinSi
					FinSi
				FinSi
			fin si 
		fin si 
	FinSi
	
	escribir "Desea terminar el juego? 1=no y 2=si"
	leer respuestafinal
	
Hasta Que respuestafinal=2 o mesa=2 o continuar1=2 o continuar2=2 o continuar3=2

FinAlgoritmo
