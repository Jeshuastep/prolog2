


-- Implemente una funcion en haskell que reciba una lista de numeros y responda con el maximo de esa lista
mayor [] = error "Lista Vacia"
mayor [x] = x
mayor (x:xs) = if (x> mayor xs) then x 
  else mayor xs

-- Implemente una funcion en haskell que reciba una lista de numeros y la invierta
reversa lista= if null lista then lista else reversa (tail lista) ++ (take 1 lista)

-- Implemente una funcion en haskell que regrese el factorial de un numero
factorial n= if (n==0) then 1 
 else n* factorial (n-1)  

-- Implemente una funcion en haskell que sume dos listas
lst1 +++ lst2 = case lst1 of
[] -> lst2
(x:xs)-> x:(xs+++lst2)

-- Implemente una función en haskell que regrese  el numero mayor y menor de una lista
maxmin lista= (dupla lista, dupla2 lista)
dupla (a:[])=a
dupla (a:b:as)= if a>dupla (b:as) then a else dupla (b:as)
dupla2 (a:[])=a
dupla2 (a:b:as)= if a<dupla2 (b:as) then a else dupla2 (b:as)


-- Implemente una funcion en haskell que combine dos listas con su respectivo par ordenado
iesimo lista []= []
iesimo [] lista = []
iesimo (a:as)  (b:bs) = (a,b) : iesimo as bs


--Implemente una funcion en Haskell que reciba un numero n y una lista y devuelva los primeros n elementos de la lista
multiplicar 0 x= []
multiplicar n x = head x:multiplicar(n-1)(tail x)

--Implemente una funcion en Haskell que reciba un numero n y un elemento y devuelva una lista con n veces el elemento
--replicar 0 x= []
--replicar n x = x: (replicar (n-1) x)

-- ej03: Escriba un programa Haskell que, dada una lista de cadenas, devuelva la primera cadena de la lista, o el mensaje "Lista vacia " si no hay nada en la lista
primeroovacia xs = if (null xs) then ("lista vacia") else (head xs)

-- Escriba un programa en Haskell que reciba tres numeros diferentes y sume los dos mayores
SumarDosTres x1 x2 x3 = if (x1>x2 && x3>x2) then (x1+x3) else if (x1>x3 && x2>x3) then (x1+x2) else (x2+x3)

-- Implementar una funcion en Haskell que reciba dos listas, si la de menor longitud es de n elementos, entonces crea una lista con n  2-tuplas. La i-esima 2 tupla tiene como primer elemento al i-esimo elemento de la primera lista y como segundo elemento al i-esimo elemento de la segunda lista.
iTuplas lista1 lista2 = if(null lista1 || null lista2) then [] else (head lista1, head lista2): iTuplas (tail lista1) (tail lista2)

-- Implementar una funcion en Haskell que reciba una lista de numeros y que responda True si la lista esta ordenada y False en caso contrario.
listaOrd [] = False
listaOrd (x:[]) = True
listaOrd (x:y:xs) = if (x < y) then listaOrd (x:xs) else False



-- Implementar una funcion en Haskell que reciba una lista de numeros y devuelva una 2-Tupla. El primer elemento de la tupla debe de ser el maximo de la lista y el segundo el minimo.
maxMin x = (mayorLst x, menorLst x)

mayorLst [] = error "Lista Vacia"
mayorLst [x] = x
mayorLst (x:xs) = if (x > mayorLst xs) then x else mayorLst xs

menorLst [] = error "Lista Vacia"
menorLst [x] = x
menorLst (x:xs) = if (x < menorLst xs) then x else menorLst xs








