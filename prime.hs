import Data.List

ulam :: Integral t => t -> t
ulam n = ceiling $ ((fromIntegral n)^2+3)/4

ulam' :: (Ord t, Num t, Enum t) => t -> [t]
ulam' n = [base + c*oddN | c <- [0..3], let d = if c < 3 then c else c+1, let oddN = (2*n) - 1, let base = oddN^2 + oddN + 1 + d]

-- Largest found with this algorithm: 100,000,000,000,000,001,519
isPrime :: Integral a => a -> Bool
isPrime 2 = True
isPrime n = 
    let upperBound = floor . sqrt . fromIntegral $ n
        in case [x | x <- 2:[3,5..upperBound], mod n x == 0] of
            [] -> True
            (x:xs) -> False

-- Fermat test fails for Carmichael numbers
fPrime :: Integral a => a -> Bool
fPrime 2 = True
fPrime n
    | n < 1 = False
    | True  = (2^(n-1)) `mod` n == 1
    
main = do
    print . head $ [m|n<-[10^10..],let m=ulam n,isPrime m]