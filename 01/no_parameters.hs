module NoName where
    makeGreeting salutation person = salutation <> " " <> person
    makeGreeting' salutation = ((salutation <> " ") <>)
    makeGreeting'' salutation = (<>) (salutation <> " ")
    makeGreeting''' = (<>) . firstPart where
        firstPart s = s <> " "
    mG = (<>) . (<> " ")
    