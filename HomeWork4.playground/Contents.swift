import UIKit
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
let myTeam = ["Girls", "Boys"]
var resultsOfGames = [
    "Chicago Bulls": "104 - 107",
    "Brooklyn Nets": "92 - 109",
    "Washington Wizards": "80 - 124",
    "Toronto Raptors": "100 - 101",
    "Denver Nuggets": "122 - 133",
    "Boston Celtics": "96 - 111",
    "Los Angeles Lakers": "209 - 53",
    "Dallas Mavericks ": "89 - 92"
]
for (teamNBA, score) in resultsOfGames {
    print("\(myTeam[0]) against \(teamNBA) scored \(score) ")
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 //
 let myArr = Array(5...500)

 func allSum (_ myArr: Double) {
     var mySum = 0.0
     for myNum in myArr {
         mySum += mySum
     }
 }
 */

var arrayofInt = [5, 10, 20, 50, 100, 200, 500]

sumMyWallet(numbers: arrayofInt)

func sumMyWallet (numbers: [Int]) -> Int {
    var myWallet = 0
    for myMoney in numbers {
        myWallet += myMoney
    }
    return myWallet
}

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

let numberToCheck = 22
isEvenNumber(number: numberToCheck)
let isEven = isEvenNumber(number: numberToCheck)

func isEvenNumber(number: Int) -> Bool {
    return number % 2 == 0 }
if isEven {
    print("The number is even.")
} else {
    print("The number is odd.")
}

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 
 func createArray(from start: Int, to end: Int) -> Int {
     return Int.random(in: start...end)
 }
 let someNumber = createArray(from: 1, to: 100)
 print("Some random number from 1 to 100 is: \(someNumber)")

 */

func createArray(from start: Int, to end: Int) -> [Int] {
    var result = [Int]()
    for number in start...end {
        result.append(number)
    }
    return result
}
createArray(from: 1, to: 100)
print(createArray(from: 1, to: 100))

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
 
 var oddNumberArray = [Int]()
 let myArray = createArray(from: 1, to: 100)
 for number in myArray {
     if number % 2 != 0 {
         oddNumberArray.append(number)
     }
 }
 print("Odd numbers: \(oddNumberArray)")

/*
 var myArray = createArray(from: 1, to: 100)
 
 for (index, number) in myArray() {
     if isEvenNumber(evenNumber: number) {
         if let evenIndex = myArray.firstIndex(of: number) {
             myArray.remove(at: evenIndex)
         }
     }
 }
 */

