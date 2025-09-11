import Prelude

-- Funciones propias
sumar :: Integer -> Integer -> Integer
sumar x y = x + y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Menú principal
menu :: IO()
menu = do
    putStrLn "😁😁😁=== MENÚ ===😁😁😁"
    putStrLn "¿Qué deseas hacer?"
    putStrLn "1) Factorial"
    putStrLn "2) Sumar"
    putStrLn "3) Valor absoluto (abs)"
    putStrLn "4) Techo (ceiling)"
    putStrLn "5) Sucesor (succ)"
    putStrLn "6) Mínimo (min)"
    putStrLn "7) Máximo (max)"
    putStrLn "8) División entera (div)"
    putStrLn "9) Módulo (mod)"
    putStrLn "10) Verificar par (even)"
    putStrLn "11) Piso (floor)"
    putStrLn "12) Máximo común divisor (gcd)"
    putStrLn "13) Negación booleana (not)"
    putStrLn "14) Verificar impar (odd)"
    putStrLn "15) Signo (signum)"
    putStrLn "16) Segundo elemento (snd)"
    putStrLn "17) Salir"
    opcion <- getLine

    case opcion of
        "1" -> do
            putStrLn "Introduce el número"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El resultado es: " ++ show (factorial x))
            menu

        "2" -> do
            putStrLn "Introduce el primer número"
            n1 <- getLine
            putStrLn "Introduce el segundo número"
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El resultado es: " ++ show (sumar x y))
            menu

        "3" -> do
            putStrLn "Introduce un número"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El resultado es: " ++ show (abs x))
            menu

        "4" -> do
            putStrLn "Introduce un número decimal"
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn ("El resultado es: " ++ show (ceiling x))
            menu

        "5" -> do
            putStrLn "Introduce un número"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El resultado es: " ++ show (succ x))
            menu

        "6" -> do
            putStrLn "Introduce dos números"
            n1 <- getLine
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El resultado es: " ++ show (min x y))
            menu

        "7" -> do
            putStrLn "Introduce dos números"
            n1 <- getLine
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El resultado es: " ++ show (max x y))
            menu

        "8" -> do
            putStrLn "Introduce dividendo"
            n1 <- getLine
            putStrLn "Introduce divisor"
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El resultado es: " ++ show (div x y))
            menu

        "9" -> do
            putStrLn "Introduce dividendo"
            n1 <- getLine
            putStrLn "Introduce divisor"
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El resultado es: " ++ show (mod x y))
            menu

        "10" -> do
            putStrLn "Introduce un número"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("¿Es par?: " ++ show (even x))
            menu

        "11" -> do
            putStrLn "Introduce un número decimal"
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn ("El resultado es: " ++ show (floor x))
            menu

        "12" -> do
            putStrLn "Introduce dos números"
            n1 <- getLine
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El resultado es: " ++ show (gcd x y))
            menu

        "13" -> do
            putStrLn "Introduce True o False"
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn ("El resultado es: " ++ show (not x))
            menu

        "14" -> do
            putStrLn "Introduce un número"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("¿Es impar?: " ++ show (odd x))
            menu

        "15" -> do
            putStrLn "Introduce un número"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El resultado es: " ++ show (signum x))
            menu

        "16" -> do
            putStrLn "Introduce una pareja (x,y)"
            putStrLn "Valor x:"
            n1 <- getLine
            putStrLn "Valor y:"
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn ("El segundo elemento es: " ++ show (snd (x,y)))
            menu

        "17" -> do
            putStrLn "ADIOS"

        _ -> do
            putStrLn "Opción no válida"
            menu

-- Punto de entrada
main :: IO ()
main = menu
