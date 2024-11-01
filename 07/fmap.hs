module MappingFmap where
    import Text.Read (readMaybe)
    import System.Directory.Internal.Prelude (getArgs)
    
    sumArgs :: [String] -> Maybe Int
    sumArgs str = 
        let intArgs = mapM readMaybe str
        in fmap sum intArgs


    main :: IO ()
    main = sumArgs <$> getArgs >>= print

