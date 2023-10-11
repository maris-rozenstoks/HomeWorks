/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")


import Foundation
import UIKit
var amount = 500000.0
var rate = 7.0
var period = 5.0
var deposit = amount * pow((1 + rate/100), period)
var profit = deposit - amount
    print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var amount = 500000
for _ in 1...period{
    
}
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
