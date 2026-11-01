import Auxiliar

{-
Funcion: mayorIgual
Descripcion: Recibe dos matrioska y las compara para ver si la primera es mayor o igual a la segunda
Uso: mayorIgual (Cont (Cont Mati)) (Cont(Cont(Cont Mati))) -> False
-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual _ Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont n) (Cont m) = mayorIgual n m

{-
Funcion:aplana
Descripcion: Recibe una matrioska y regresa una lista con todas las matrioskas que la componen
Uso: aplana (Cont (Cont Mati)) -> [Cont (Cont Mati), Cont Mati Mati]
-}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = Cont m : aplana m