(deffacts datos
	(valor 0 contador_numeros_utilizados 0)
	(numeros 5)
	(numeros 3)
	(numeros 8)
	(numeros 14)
	(numeros 7)
	(numero_magico 21)
)
(defrule multiplicar
    	(valor ?x contador_numeros_utilizados ?y)

=>
    	(assert (valor ?x contador_numeros_utilizados ?y))
    	(printout t crlf "Ha multiplicado" crlf)
)


(defrule es_la_solucion
    	(declare (salience 99))
    	(valor ?x contador_numeros_utilizados ?y)
        	(test (= ?x 21))
        	(test (= ?y 5))
    	=>
    	(printout t crlf "Ha llegado a la solucion con todos los numeros utilizados" crlf)
    	(halt)
)