module PatternMatching where
    addValues [] = 0
    addValues (first:rest) = first + (addValues rest)

    fancyNumber n = (zip fibs primes) !! n

    printFancy n = let (fib, prime) = fancyNumbers n
                            f = show fib
                            prime' = show prime
                    in "The fibonacci number is: " <> f <> " and the prime is: " <> prime'

    modifyPair p@(a,b)
        | a == "Hello" = "this is a salutation"
        | b == "George" = "this is a message for George"
        | otherwise = "I don't know what " <> show p <> " means"

    handleNums l = 
        case l of 
            [] -> "An empty list"
            [x] | x == 0 -> "a list called: [0]"
                | x == 1 -> "a singular list of [1]"
                | even x -> "a singleton list containing an even number"
                | otherwise -> "the list contains " <> (show x)
            _list -> "the list has more than 1 element"

        