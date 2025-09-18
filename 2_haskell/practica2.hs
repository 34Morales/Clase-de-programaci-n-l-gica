-- 1) Promedio de 4 números
promedio4 :: Double -> Double -> Double -> Double -> Double
promedio4 a b c d = (a + b + c + d) / 4

-- 2) Suma de monedas
-- a = $1.00, b = $5.00, c = $10.00, d = $50.00
sumarMonedas :: Int -> Int -> Int -> Int -> Double
sumarMonedas a b c d = fromIntegral (a*1 + b*5 + c*10 + d*50)

-- 3) Volumen de una esfera
volumenEsfera :: Double -> Double
volumenEsfera r = (4/3) * pi * r^3

-- 4) Verificar si a, b y c son iguales
sonIguales :: (Eq a) => a -> a -> a -> Bool
sonIguales a b c = (a == b) && (b == c)

-- 5) Verificar si a, b y c son diferentes
sonDiferentes :: (Eq a) => a -> a -> a -> Bool
sonDiferentes a b c = (a /= b) && (a /= c) && (b /= c)

-- 6) Precio final con descuentos
precioFinal :: Double -> Double
precioFinal x
    | x > 1000 = x * 0.60  -- 40% descuento
    | x > 500  = x * 0.70  -- 30% descuento
    | x > 100  = x * 0.90  -- 10% descuento
    | otherwise = x

-- 7) Última cifra de un número
ultimaCifra :: Integer -> Integer
ultimaCifra n = n `mod` 10

-- ============================
-- Menú interactivo
-- ============================

menu :: IO ()
menu = do
    putStrLn "=== MENÚ ==="
    putStrLn "1) Promedio de 4 números"
    putStrLn "2) Suma de monedas (a=$1, b=$5, c=$10, d=$50)"
    putStrLn "3) Volumen de una esfera"
    putStrLn "4) Verificar si a, b y c son iguales"
    putStrLn "5) Verificar si a, b y c son diferentes"
    putStrLn "6) Calcular precio final con descuento"
    putStrLn "7) Última cifra de un número"
    putStrLn "8) Salir"
    putStrLn "Elige una opción: "
    opcion <- getLine

    case opcion of
        "1" -> do
            putStrLn "Introduce 4 números:"
            n1 <- getLine
            n2 <- getLine
            n3 <- getLine
            n4 <- getLine
            let a = read n1 :: Double
            let b = read n2 :: Double
            let c = read n3 :: Double
            let d = read n4 :: Double
            putStrLn ("El promedio es: " ++ show (promedio4 a b c d))
            menu

        "2" -> do
            putStrLn "Introduce la cantidad de monedas a=$1:"
            n1 <- getLine
            putStrLn "Introduce la cantidad de monedas b=$5:"
            n2 <- getLine
            putStrLn "Introduce la cantidad de monedas c=$10:"
            n3 <- getLine
            putStrLn "Introduce la cantidad de monedas d=$50:"
            n4 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            let d = read n4 :: Int
            putStrLn ("El total es: $" ++ show (sumarMonedas a b c d))
            menu

        "3" -> do
            putStrLn "Introduce el radio de la esfera:"
            r <- getLine
            let radio = read r :: Double
            putStrLn ("El volumen es: " ++ show (volumenEsfera radio))
            menu

        "4" -> do
            putStrLn "Introduce 3 números:"
            n1 <- getLine
            n2 <- getLine
            n3 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            putStrLn ("¿Son iguales?: " ++ show (sonIguales a b c))
            menu

        "5" -> do
            putStrLn "Introduce 3 números:"
            n1 <- getLine
            n2 <- getLine
            n3 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            putStrLn ("¿Son diferentes?: " ++ show (sonDiferentes a b c))
            menu

        "6" -> do
            putStrLn "Introduce el precio de la compra:"
            n1 <- getLine
            let precio = read n1 :: Double
            putStrLn ("El precio final es: $" ++ show (precioFinal precio))
            menu

        "7" -> do
            putStrLn "Introduce un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("La última cifra es: " ++ show (ultimaCifra x))
            menu

        "8" -> do
            putStrLn "ADIOS 👋"

        _ -> do
            putStrLn "Opción no válida"
            menu

-- Punto de entrada
main :: IO ()
main = menu
