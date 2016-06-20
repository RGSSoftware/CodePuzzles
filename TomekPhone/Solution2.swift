
func minKeystrokes(frequencies: [Int], keySizes: [Int]) -> Int {
    
    var totalKeySizes = 0
    for keySize in keySizes {
        totalKeySizes += keySize
    }
    
    if frequencies.count > totalKeySizes{
        return -1
    }
    
    let sortedFrequencies = frequencies.sorted{ return $0 > $1 }
        
    var totalKeyValues = 0
    
    var newKeySlots = keySizes.sorted{ return $0 > $1 }
    var keysCount = newKeySlots.count
    
    var keyM = [Int: Int]()
    for (index, f) in sortedFrequencies.enumerated(){
        
        
        if newKeySlots[index % keysCount] <= 0 {
            
             keysCount -= 1
            
        }
        
        if keyM[index % keysCount] == nil {
            keyM[index % keysCount] = 0
        }
        
        keyM[index % keysCount]! += 1       
            
        totalKeyValues += f * keyM[index % keysCount]!
            
        newKeySlots[index % keysCount] -= 1
        
    }
    
    
    
    return totalKeyValues
    
}

let frequencies = [353, 844, 814, 878, 565, 64, 520, 870, 595, 674, 189, 659, 351, 662, 239, 616, 147, 950, 592, 249, 733, 147, 147, 588, 221, 117, 834, 838, 25, 507, 206, 587, 146, 64, 382, 449, 962, 509, 975, 434, 177, 620, 94, 435, 569, 918, 317, 238, 864, 129]
let keySizes = [35, 49, 28, 33]
let expect = 111474

let test = minKeystrokes(frequencies: frequencies, keySizes: keySizes)

if(test == expect){
   
    print("pass: " + String(test))
       
} else {
    
    print("fail: " + String(test))
    
}
