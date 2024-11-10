module Applicatives where

    data List a = Empty | List a (List a)
    instance Functor List where
        fmap _ Empty = Empty
        fmap f (List a as) = List (f a) (fmap f as)

    instance Applicative List where
        pure :: a -> List a
        pure a = List a Empty
        (<*>) :: List (a -> b) -> List a -> List b
        Empty <*> _ = Empty
        List f fs <*> vals = (f <$> vals) `concatList` (fs <*>  vals)
            where
                concatList :: List a -> List a -> List a
                concatList Empty as = as
                concatList (List a as) bs = List a (concatList as bs)