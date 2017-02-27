# Reverse Words in swift

```swift
import Foundation

let line = "Hello world! two."
print(line) // "Hello world! two."
print(reverseWords(line)) // "two. world! Hello"



func reverseWords(_ string: String) -> String {
    let s = string + " "
    var reverseString = ""
    s.enumerateSubstrings(in: s.startIndex ..< s.endIndex,
                          options: [.byWords, .reverse]) {w,_,ar,_ in
                            reverseString += s.substring(with: ar)
    }
    return reverseString.trimmingCharacters(in: .whitespaces)
}
```