module RecursiveLists where
    countdown n = if n <= 0 then [] else n : countdown (n-1)
    factors num = factors' num 2 
        where
            factors' num fact
                | num == 1 = []
                | (num `rem` fact) == 0 = fact : factors' (num `div` fact) fact
                | otherwise = factors' num (fact + 1)

    isBalance s = 0 == isBalanced' 0 s
        where
            isBalanced' count s
                | null s = count
                | head s == '(' = isBalanced' (count + 1) (tail s)
                | head s == ')' = isBalanced' (count - 1) (tail s)
                | otherwise = isBalanced' count (tail s)

    double = [2 * number | number <- [0..10]]
    doubleOdds = [2 * number | number <- [0..10], odd number]
    doubleOdds' = map (2*) . filter odd $ [0..10]
    
    