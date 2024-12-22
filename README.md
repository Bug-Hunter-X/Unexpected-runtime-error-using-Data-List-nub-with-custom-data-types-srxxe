This repository demonstrates a common Haskell error related to the `nub` function from `Data.List`. The `nub` function removes duplicate elements from a list, but it requires an `Ord` instance to be defined for the list's elements.  The `bug.hs` file shows how using `nub` with a list of custom data types without an `Ord` instance leads to a runtime error. The `bugSolution.hs` file demonstrates how to fix the issue by defining an `Ord` instance for the custom data type.

This example highlights the importance of understanding Haskell's type system and the use of type classes.  For beginners, this can be a source of confusion.  The provided solution clearly shows how to properly define an `Ord` instance to enable `nub` to function correctly.