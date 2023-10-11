var numberToCheck = 6
var counter = 0

while numberToCheck !=5 {
    numberToCheck = Int.random(in: 1...10)
    counter += 1}
print("Number \(numberToCheck) will be after \(counter) shuffles")
