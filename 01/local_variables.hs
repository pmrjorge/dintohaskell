module Variables where
makeGreeting salutation person = salutation <> " " <> person

m = print $ makeGreeting "Hello" "George"

makeGreeting' s p = let msgWTrailingSpace = s <> " " in msgWTrailingSpace <> p

extendedGreeting p = let hello = makeGreeting "Hello" p
                         goodDay = makeGreeting "I hope you have a nice afternoon" p
                         goodBye = makeGreeting "See you later" p
                    in hello <> "\n" <> goodDay <> "\n" <> goodBye

extendedGreeting' p = let joinWNewLines a b = a <> "\n" <> b
                          hello = makeGreeting "Hello" p
                          goodbye = makeGreeting "Goodbye" p
                      in joinWNewLines hello goodbye

