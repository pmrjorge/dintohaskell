module InfiniteStreams where
    radsToDegrees :: Float -> Int
    radsToDegrees radians = let degrees = cycle [0..359]
                                converted = truncate $ (radians * 360) / (2 * pi)
                            in degrees !! converted
    
    epicCycle xs = cycleHelper xs
        where
            cycleHelper [] = epicCycle xs
            cycleHelper (y:ys) = y : cycleHelper ys


    findFirst predicate = foldr findHelper []
                        where
                            findHelper listElement maybeFound
                                | predicate listElement = [listElement]
                                | otherwise = maybeFound

    