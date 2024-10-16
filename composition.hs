module Comp where
addOne = (+1)
timesTwo = (*2)
squared num = num * num
minusFive num = num - 5

findResult num = minusFive (squared (timesTwo (addOne num)))
(c) f1 f2 arg = f1 $ f2 arg