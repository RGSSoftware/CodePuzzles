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