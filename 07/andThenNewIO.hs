module AndThenNewIO where
    andThen :: IO a -> (a->IO b)->IO b
    andThen = (>>=)

    newIO :: a -> IO a
    newIO = return

    