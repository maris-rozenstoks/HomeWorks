/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

 */
import Foundation

var amount = 500000.0
var rate = 7.0
var period = 5.0
var deposit = amount * pow((1 + rate/100), period)
var profit = deposit - amount
    print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

import UIKit
var arrayofInt = [Int]()
arrayofInt = [3, 5, 6, 7, 8, 8, 9]
for evenNumber: Int in arrayofInt where evenNumber % 2 == 0 {
    print("My even numbers are: \(evenNumber)")
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

import UIKit
var counter = 0
var randomInts: [Int] = []
for _ in 0...9 {
    let randomNumber = Int.random(in: 1...20)
    randomNumber.
    }
    print("Number 5 will be after \(counter) shuffles")


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var numberOfDays = 0
while true {
    numberOfDays += 1
    if numberOfDays == 10 {
        print("bug will spend \(numberOfDays) days to reach top of the post")
        break
    }
}
