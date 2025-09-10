sumar :: Integer -> Integer
sumar x y = x+y

factorial :: Integer -> Integer
factorial 0 = 1
factorial  n = n * factorial (n-1)

menu :: IO()
menu = do
    putStrLn("😁😁😁=== MENÚ ===😁😁😁")
    putStrLn("¿Qué deseas hacer?")
    putStrLn("1) Factorial")
    putStrLn("2) Salir")
    opcion <- getLine


    case opcion of
        "1" -> do
            putStrLn("Introduce el número")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultaado es: "++ show(factorial x))
            menu
     "2"-> do
        putStrLn("ADIOS")
        _ -> do
            putStrLn("Opción no valida")
            menu
-- public statis void main
main :: IO ()
main = menu