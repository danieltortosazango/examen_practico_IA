(deffacts datos
	(valor 0 contador_reglas_utilizadas 0)
	(numeros 5)
	(numeros 3)
	(numeros 8)
	(numeros 14)
	(numeros 7)
	(numero_magico 21)
	(valor_multiplicado 0)
	(valor_dividido 0)
	(valor_restado 0)
	(valor_sumado 0)
)

(defrule multiplicar
	(valor ?x contador_reglas_utilizadas ?y)
	(valor_multiplicado ?v)
	(numeros $?z)
=>
	(retract $?z)
	(assert (valor ?v contador_reglas_utilizadas (+ ?y 1)))
    	(printout t crlf "Ha multiplicado" crlf)
)

(defrule dividir
	(valor ?x contador_reglas_utilizadas ?y)
	(valor_dividido ?v)
	(numeros $?z)
=>
	(retract $?z)
	(assert (valor ?v contador_reglas_utilizadas (+ ?y 1)))
    	(printout t crlf "Ha multiplicado" crlf)
)

(defrule restar
	(valor ?x contador_reglas_utilizadas ?y)
	(valor_restado ?v)
	(numeros $?z)
=>
	(retract $?z)
	(assert (valor ?v contador_reglas_utilizadas (+ ?y 1)))
    	(printout t crlf "Ha multiplicado" crlf)
)

(defrule sumar
	(valor ?x contador_reglas_utilizadas ?y)
	(valor_sumado ?v)
	(numeros $?z)
=>
	(retract $?z)
	(assert (valor ?v contador_reglas_utilizadas (+ ?y 1)))
    	(printout t crlf "Ha multiplicado" crlf)
)

(defrule es_la_solucion
    	(declare (salience 99))
    	(valor ?x contador_reglas_utilizadas ?y)
        	(test (= ?x 21))
        	(test (= ?y 5))
    	=>
    	(printout t crlf "Ha llegado a la solucion con todos los numeros utilizados" crlf)
    	(halt)
)