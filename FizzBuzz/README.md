# Classic Fizz Buzz

```swift
import Foundation

print(fizzBuzz(22))

func fizzBuzz(_ count: Int) -> String {
    var fizzBuzz = ""
    
    for i in 1...count {
        if i % 5 == 0 && i % 3 == 0 { fizzBuzz += "Fizz Buzz" }
        else if i % 3 == 0 { fizzBuzz += "Fizz" }
        else if i % 5 == 0 { fizzBuzz += "Buzz" }
        else { fizzBuzz += String(i) }
        fizzBuzz += "\n"
    }
    
    return fizzBuzz.trimmingCharacters(in: .whitespacesAndNewlines)
    
}

Output:
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
Fizz Buzz
16
17
Fizz
19
Buzz
Fizz
22
```