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
