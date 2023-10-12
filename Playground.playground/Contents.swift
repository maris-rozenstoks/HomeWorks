import UIKit
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
let numberToCheck = 21
isEvenNumber(evenNumber: numberToCheck)
let isEven = isEvenNumber(evenNumber: numberToCheck)

func isEvenNumber(evenNumber: Int) -> Bool {
    return evenNumber % 2 == 0 }
if isEven {
    print("The number is even.")
} else {
    print("The number is odd.")
}

func createArray(from start: Int, to end: Int) -> [Int] {
    var result = [Int]()
    for number in start...end {
        result.append(number)
    }
    return result
}
createArray(from: 1, to: 100)
print(createArray(from: 1, to: 100))


let myArray = createArray(from: 1, to: 100)
var index = 0
while index < myArray.count {
    let number = myArray[index]
    if number % 2 == 0 {
        if let evenIndex = myArray.firstIndex(of: number) {
            myArray.remove(at: evenIndex)
        }
    } else {
        index += 1
    }
}

print(myArray)


