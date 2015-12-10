-- Day 10
import Data.Char
import Data.List

input = [1,1,1,3,2,2,2,1,1,3,]
f z = zip (map length $ group z) (map head $ group z)
g = concatMap (\(a,b) -> [a,b,]) 

ans = (!! 40) . iterate ( g.f ) 
map intToChar ans input
