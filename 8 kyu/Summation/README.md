# [Summation](https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/swift)

Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

For example:
```swift
summation(2) -> 3
1 + 2

summation(8) -> 36
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8
```

### Solutions:
```swift
func summation(_ n: Int) -> Int {
    return (1...n).reduce(0){ $0 + $1 }
}
```
```swift
func summation(_ n: Int) -> Int {
    return n * (1 + n) / 2
}
```
