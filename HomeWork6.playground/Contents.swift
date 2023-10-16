import UIKit

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */


enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult(firstNumber: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = firstNumber
    
    switch calculationType {
    case.addition:
        result += numberTwo
    case.subtraction:
        result -= numberTwo
    case.multiplication:
        result *= numberTwo
    case.division:
        if numberTwo != 0 {
            result /= numberTwo
        } else {
            print("Division with zero is forbidden")
        }
    }
    
    return result
}

let numberOne = 8
let numberTwo = 4
let calculationType = CalculationType.addition

var result = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: calculationType)

print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let calculationTypes: [CalculationType] = [.addition, .subtraction, .multiplication, .division]

for calculationType in calculationTypes {
    let result = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: calculationType)
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
}

/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs() {
        print("Car name is \(name), production year will be \(productionYear) with \(horsePower) HP")
    }
}

let myCar = Car(name: "BMWMB", productionYear: 2024, horsePower: 2000)
myCar.getSpecs()

