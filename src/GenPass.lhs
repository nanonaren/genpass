> module Main
>     (
>       main
>     ) where
>
> import System.Random.MWC


> main = do
>   xs <- withSystemRandom . asGenIO $ \gen ->
>           sequence (replicate 25 (uniform gen))
>   putStrLn $ map (toEnum.(+48).(`mod` (122-48)).abs) (xs :: [Int])