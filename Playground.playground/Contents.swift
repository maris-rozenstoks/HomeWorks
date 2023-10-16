enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult(firstNumber: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = firstNumber

    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
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

let calculationTypes: [CalculationType] = [.addition, .subtraction, .multiplication, .division]

for calculationType in calculationTypes {
    let result = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: calculationType)
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
}
