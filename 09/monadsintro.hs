module MonadsSpecial where
    class Applicative m => M m where
        infix 1 >>=
        (>>=) :: m a -> ( a -> m b) -> m b
        infix 1 >>
        (>>) :: m a -> m b -> m b
        return :: a -> m a

        
