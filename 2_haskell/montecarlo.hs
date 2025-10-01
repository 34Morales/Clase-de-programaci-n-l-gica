import System.Random (randomRIO)
import Distribution.Compat.Prelude (readLn)


puntoAleatorio :: IO (Double, Double)
puntoAleatorio = do 
    x <- randomRIO(-1.0, 1.0)
    y <- randomRIO(-1.0, 1.0)
    return (x,y)

estadoDentroCirculo :: (Double, Double) -> Bool
estadoDentroCirculo (x,y) = x*x + y*y <= 1.0

calcularPi :: Int -> IO Double 
calcularPi n = do
    puntos <- mapM(\_ -> puntoAleatorio) [1..n]
    let dentroCirculo = length(filter estadoDentroCirculo puntos)
    return (4.0 * fromIntegral dentroCirculo / fromIntegral n )

main :: IO ()
main = do
    putStrLn "Ingresen el número de dardos: "
    n <- readLn
    piAprox <- calcularPi n
    putStrLn ("PI vale:"++ show piAprox)
