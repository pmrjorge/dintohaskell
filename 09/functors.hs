module MappingFunctors where
    class Fntor f where
        fmp :: (a->b)->f a -> f b
        (<$) :: a -> f b -> f a
        (<$) a = fmp (const a)

    
    infixl 4 <$>
    (<$>) :: Fntor f => (a -> b) -> f a -> f b
    (<$>) = fmp

    data M a = N | J a
    instance Fntor M where
        fmp _ N = N
        fmp f (J a) = J (f a)

    data List a = Empty | List a (List a)

    toList :: [a] -> List a
    toList = foldr List Empty

    fromList :: List a -> [a]
    fromList Empty = []
    fromList (List a as) = a : fromList as

    instance Fntor List where
        fmp _ Empty = Empty
        fmp f (List a as) = List (f a) (fmp f as)

    data E a b = L a | R b

    instance Fntor (E a) where
        fmp f (L a) = L a
        fmp f (R a) = R (f a)

    