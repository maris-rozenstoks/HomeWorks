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
