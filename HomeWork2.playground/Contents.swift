/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
import UIKit
var num1: Float = 3.14
var num2: Float = 42.0
var sum: Double = Double (num1) + Double (num2)
let formated = String (format: "%.2f", sum)
print(formated)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */
var numberOne = 9
var numberTwo = 2
let numberThree = numberOne / numberTwo
let numberFour = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(numberThree), the remainder is \(numberFour).")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty: Int = 4
var price: Int
var totalSum: Int
if qty <= 5 {
price = 1000
    totalSum = qty * 1000
} 
else if qty >= 5 && qty < 10 {
price = 900
    totalSum = qty * 900
} 
else {
price = 850
    totalSum = qty * 850
}
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

/*
 WRONG CONVERSION"
var userInputAge: String = "33a"
var myInt = Int(userInputAge)!
*/

var userInputAge: String?
userInputAge = "33a"
var myInt = Int(userInputAge ?? "0")
if myInt == nil {
    print("userInputAge can't be converted to Int value")
} else {
    print("userInputAge can be converted to Int value")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let year: Int = 1985
let month: Int = 5
let day: Int = 29
var yearNow = 2023
var monthNow = 10
var dayNow = 6
let daysInYear = 365
var totalYearsFromBirth = yearNow - year
if monthNow <= month && dayNow <= day {
    totalYearsFromBirth = totalYearsFromBirth - 1
}
var totalMonthFromBirth = totalYearsFromBirth * 12 + (monthNow - month) - 1
if monthNow <= month && dayNow <= day {
    totalMonthFromBirth = (totalYearsFromBirth - 1) * 12 + 7 + monthNow
}
var totalDaysFromBirth = totalYearsFromBirth * daysInYear + (monthNow - month) * 30 - dayNow - 1 //30(avarage days in month) - 29(birth day)
if monthNow <= month && dayNow <= day {
    totalDaysFromBirth = totalYearsFromBirth * daysInYear + monthNow * 30 + dayNow + 1 //30(avarage days in month) - 29(birth day)
}
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
//Mistake can be +-1 day (average month days)
/*
 */
import UIKit
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd/mm/yyyy"
let birthDay = dateFormatter.date (from: "29/05/1985") ?? Date()
let currentDay = Date()

let calendar = Calendar.current
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthDay, to: currentDay).day
let totalMonthFromBirth = calendar.dateComponents([.month], from: birthDay, to: currentDay).month
let totalYearsFromBirth = calendar.dateComponents([.year], from: birthDay, to: currentDay).year
if totalDaysFromBirth != 0 || totalMonthFromBirth != 0 || totalYearsFromBirth != 0 {
    print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
} else {
    print("Wrong input!")
}

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let monthOfBirth = 5
var quarter = " "
switch monthOfBirth {
case 1...3:
    quarter = "first"
case 2...6:
    quarter = "second"
case 7...9:
    quarter = "third"
case 10...12:
    quarter = "forth"
default:
    print("Wrong input")
}
print("I was born in the \(quarter) quarter")
