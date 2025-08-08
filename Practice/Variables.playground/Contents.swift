import UIKit

// variables var
// constants - let

var greeting = "Hello, playground"

let day = "Thursday"
let dailyTemp = 75

print("Today is \(day) and the temperature is \(dailyTemp) degrees")


var temperature = 80
print("Current temperature is\(temperature) degrees")
temperature = 90
print("New temperature is \(temperature) degrees")

temperature = dailyTemp
print("Reset temperature is \(temperature) degrees")

// --- Game scoring ---

print("The game score")
let levelScore = 10
var gameScore = 0
gameScore += levelScore
print("Current score is \(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20

print("Level bonus score is \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print("Final score is \(gameScore)")

let levelLowestScore = 50
let levelHighestScore = 100
let levels = 10

let levelScoreDiff = levelHighestScore - levelLowestScore
let levelAv = levelScoreDiff / levels

print("Level score difference is \(levelAv)")


let Dish = "Pasta"
var ordercount = 4

print(Dish + " was ordered \(ordercount) times")

// Swift datatypes

let dishName: String = "Pasta"
let price: Double = 12.99
let inStock: Bool = true
let qty: Int = 4
print("\(dishName) is \(price) and is \(inStock)")

