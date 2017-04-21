-- FizzBuzz with extensible rules

fizz n = n `mod` 3 == 0
buzz n = n `mod` 5 == 0

rules = [ (fizz, "fizz"), (buzz, "buzz")]

engine i = if null transform then show i else transform where 
    transform = concat [out | (rule,out) <- rules, rule i]

main = mapM_ (putStrLn . engine) [1..100]