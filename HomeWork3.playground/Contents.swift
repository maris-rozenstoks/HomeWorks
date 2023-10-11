/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

 */
import UIKit

var deposit: Double = 500000
var interestRate: Double = 7
var period: Int = 5
var profit: Double = 0

for _ in 1...period{
  let interestRate = deposit * (interestRate / 100)
    profit += interestRate
    deposit += interestRate
}
let formattedProfit = String(format: "%.2f", profit)
let formattedDeposit = String(format: "%.2f", deposit)
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur!")

		

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var arrayofInt = [Int]()
arrayofInt = [3, 5, 6, 7, 8, 8, 9]
var evenNumber: [Int] = []
for allNumbers in arrayofInt where allNumbers % 2 == 0 {
    evenNumber.append(allNumbers)
}
print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
*/

var numberToCheck = 6
var counter = 0

while numberToCheck != 5 {
    numberToCheck = Int.random(in: 1...10)
    counter += 1
}
print("Number \(numberToCheck) will be after \(counter) shuffles.")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var meters = 0
var numberOfDays = 0
var fullDay = true

while meters != 10 {
    if fullDay {
        meters += 2
        numberOfDays += 1
        fullDay = false
    } else {
        meters -= 1
        fullDay = true
    }
}
print("Bug will spend \(numberOfDays) days to reach top of the post.")
