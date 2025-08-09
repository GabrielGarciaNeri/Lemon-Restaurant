import UIKit

//IF- ELSE IF - ELSE

/*
 --------- SYNTAX ---------
 if condition1 {
    this block runs if condition1 is true
 }else if condition2 {
    this block runs if condition2 is true
 }else {
    this block runs if none of the above conditions are true
 }
 */

// ------ Example 1 -------
var waterTemp: Int = 25

if waterTemp >= 100 {
    print("It is boiling water!")
}else if waterTemp >= 30 {
    print("It is hot water!")
}else {
    print("It is cold water!")
}

// ----- Example 2 ------
var position = 13

if position == 1 {
    print("You are first!")
}else if position == 2 {
    print("You are second!")
}else if position == 3{
    print( "You are third!")
}else{
    print("You finished in position \(position). Keep Trainig!")
}

// ---- Example 3 ----

var temperature = 74

if temperature >= 68 && temperature <= 98 {
    print("It is a comfortable temperature!")
}else {
    print("It is not a comfortable temperature!")
}


// ---- Example 4 ----

// && = and
// || = or
var mainPower: Bool = false
var backupPower: Bool = true

if mainPower == true || backupPower == true {
    print("We have power!")
}else{
    print("We don't have power!")
}


var VIP = true
print(VIP ? "Welcome, VIP guest!" : "Welcome, regular guest.") //ternary operaty = ? name


// --- SWITCH ---

let table = 1

switch table {
case 1: print("You are in the garden")
case 2: print("You are in the dining room")
default: print("Please wait to be seated")
}

let drink = "sprite"

switch drink {
case ( "sprite") : print("You ordered a Sprite")
case ("coca-cola") : print("You ordered a Coca-Cola")
default: print("We don't have this drink")
}


