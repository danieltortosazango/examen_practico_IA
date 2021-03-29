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
	(numeros ?z)
	(?v = ?z * ?z)
	(?x = ?v)
	(?y = ?y + 1)
=>
    	(assert (valor ?x contador_reglas_utilizadas ?y))
	(asser (valor_multiplicado ?v)
    	(printout t crlf "Ha multiplicado" crlf)
)

(defrule dividir
    	(valor ?x contador_reglas_utilizadas ?y)
	(numeros ?z)
	(valor_dividido ?v)
	(?v = ?z / ?z)
	(?x = ?v)
	(?y = ?y + 1)

=>
    	(assert (valor ?x contador_reglas_utilizadas ?y))
	(asser (valor_dividido ?v)
    	(printout t crlf "Ha multiplicado" crlf)
)

(defrule restar
    	(valor ?x contador_reglas_utilizadas ?y)
	(numeros ?z)
	(valor_dividido ?v)
	(valor_restado ?r)
	(?r = ?z - ?v)
	(?x = ?r)
	(?y = ?y + 1)

=>
    	(assert (valor ?x contador_reglas_utilizadas ?y))
	(assert (valor_restado ?v) 
    	(printout t crlf "Ha restado" crlf)
)

(defrule sumar
    	(valor ?x contador_reglas_utilizadas ?y)
	(numeros ?z)
	(valor_multiplicado ?m)
	(valor_restado ?r)
	(valor_sumado ?sum)
	(?sum = ?m + ?r)
	(?x = ?sum) 
	(?y = ?y + 1)

=>
    	(assert (valor ?x contador_reglas_utilizadas ?y))
	(assert (valor_sumado ?sum) 
    	(printout t crlf "Ha sumado" crlf)
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