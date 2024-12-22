```haskell
import Data.List (nub)

data MyData = MyData {x :: Int, y :: String}

instance Eq MyData where
  (==) (MyData x1 y1) (MyData x2 y2) = x1 == x2 && y1 == y2

instance Ord MyData where
  compare (MyData x1 y1) (MyData x2 y2) = compare (x1, y1) (x2, y2)

instance Show MyData where
  show (MyData x y) = "(" ++ show x ++ "," ++ y ++ ")"

main :: IO ()
main = do
  let xs = [MyData 1 "a", MyData 2 "b", MyData 1 "a"]
  let ys = nub xs
  print ys
```
By adding `Eq` and `Ord` instances for `MyData`, we enable `nub` to correctly compare and remove duplicate elements.  The `Eq` instance defines equality, and the `Ord` instance defines the comparison order, allowing `nub` to function as intended.