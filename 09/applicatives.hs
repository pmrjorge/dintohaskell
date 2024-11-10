class Functor f => Applicative f where
    pure :: a -> f a
    infix 4 <*>
    (<*>) :: f (a -> b) -> f a -> f b

