import UIKit

/*
 func functionName(parameterName: DataType) -> DataType{
 
    This is the body of the function
 
 }
 */

// ---- Example 1 ----
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

// Call the function
let message = greet(person: "Alice")
print(message)

// ---- Example 2 ----
func greeting(person: String,formally: Bool = false) -> String {
    if formally {
        return "Dear " + person + "!"
    }else {
        return "Hi " + person + "!"
    }
}


print(greeting(person: "Bob", formally: true))
print(greeting(person: "tob", formally: false))


// ---- Example 3 ----

func calculateTotal(price: Double, quantity: Int) -> Double{
    return price * Double(quantity)
}

let totalPrice = calculateTotal(price: 10.05, quantity: 5)
print(totalPrice)


func deliveryTime(minutes: Int) -> String{
    return "Delivery time is \(minutes) minutes"
}

let delivery = (deliveryTime(minutes: 45))
print (delivery)


func total(price: Double, tax: Double) -> Double{
    return price + (price * tax)
}

print(total(price: 10.05, tax: 0.2))



func Discount(price: Double, discount: Double) -> Double{
    let total = price * discount
    return total
}

print(Discount(price: 100.00, discount: 0.2))
