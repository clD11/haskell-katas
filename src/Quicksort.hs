qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort greater
    where 
    smaller = [ i | i <- xs, i <= x]
    greater = [ i | i <- xs, i >= x]

main = do
        let x = qsort [9,7,5,3,1]
        print x