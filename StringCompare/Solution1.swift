import Foundation

func simpleDifference(_ a: String, _ b: String) -> Int {

    var matchCount = 0
    
    var aIndex = a.startIndex
    var bIndex = b.startIndex
    for index in 0..<min(a.characters.count, b.characters.count){
        if index != 0 {
            
            aIndex = a.index(after: aIndex)
            bIndex = b.index(after: bIndex)
                        
        } 
        
        if a[aIndex] == b[aIndex] {
            matchCount += 1
        }
        
    }
    
    return matchCount
}

let aString = "Hello"
let bString = "Worlo esd"
let expect = 2

let test = simpleDifference(aString, bString)

if(test == expect){
   
    print("pass: " + String(test))
       
} else {
    
    print("fail: " + String(test))
    
}