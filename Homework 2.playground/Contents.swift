/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */
var num1: Float = 3.14
var num2: Float = 42.0
var num3: Double = 53.1
var sum = num1 + num2 + Float(num3)
print(sum)
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
var qty: Int = 8
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
let userInputAge: String = "33.a"
let myInt = Int(userInputAge) ?? 0

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let year: Int = 1985
let month: Int = 5
let day: Int = 29
var yearNow: Float = 2023
let monthInYear: Int = 12
var monthNow: Float = 10
let daysInYear: Float = 365.25
var dayNow: Float = 6

var totalYearsFromBirth = yearNow - Float(year)
var totalMonthFromBirth = totalYearsFromBirth * Float(monthInYear) - Float(monthInYear) + Float(month) + (monthNow)
var totalDaysFromBirth = totalYearsFromBirth * Float(daysInYear) + Float()

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
