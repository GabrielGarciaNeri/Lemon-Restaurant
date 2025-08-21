//
//  MenuView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/20/25.
//

import SwiftUI

struct MenuView: View {
    
    /*
    let menuItems = [
        "Pizza": 9.99,
        "Pasta":10.50,
        "Salad": 6.00,
        "Soup":4.75,
        "Steak": 14.99,
        "Chocolate Cake": 5.75
    ]
     */
    
    var sortedMenuItems: [MenuItem]{
        menuItems.sorted { $0.price < $1.price }
    }
    
    
    @State private var showMessage: Bool  = false
    @State private var showThankYouMessage: Bool = false
    @State private var showDessert: Bool = false
    
    let menuItems = [
        MenuItem(
            name: "Pizza",
            description: "Cheesy and hot",
            price: 9.0
        ),
        MenuItem(
            name: "Pasta",
            description: "Spaghetti with tomato sauce",
            price: 10.0
        ),
        MenuItem(
            name: "Salad",
            description: "Fresh greens and veggies",
            price: 6.0
        ),
        MenuItem(
            name: "Steak",
            description: "Freshly cut",
            price: 12.0
        ),
        MenuItem(
            name: "Chicken",
            description: "Spicy",
            price: 8.0
        ),
        MenuItem(
            name: "Tacos",
            description: "Crunchy and tasty",
            price: 14.0
        ),
        MenuItem(
            name: "Lasagna",
            description: "Spaghetti with meat sauce",
            price: 15.0
        ),
        MenuItem(
            name: "Ramen",
            description: "From Japan",
            price: 5.0
        ),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image (systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font (.system(size: 32))
                Text ("Today's Menu" )
                    .font (.largeTitle)
            }
            .padding()
            
            // VStack
            VStack(spacing: 20){
                Toggle("Show a special text" , isOn: $showMessage)
                    .padding()
                
                if showMessage {
                    Text("You unlocked a special offer!")
                        .font (.title3)
                        .foregroundColor(.green)
                }
                
                Toggle("Show a thank you message" , isOn: $showThankYouMessage)
                    .padding( )
                if showThankYouMessage {
                    Text("Thank you for choosing us!")
                        .foregroundColor(.blue)
                        .italic()
                }
                
                Button("View Desserts"){
                    showDessert.toggle()
                }
                .padding()
                .background(.green.opacity(0.4))
                .cornerRadius(10)
                .foregroundColor(.black)
                
                .sheet(isPresented: $showDessert){
                    DessertView()
                }
            }
            
            List(sortedMenuItems){ item in
                MenuItemView(item: item)
            }
            
          /*  List {
                ForEach(menuItems.sorted(by: {$0.key < $1.key}), id: \.key){(name, price) in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(name)
                                .font (.headline)
                            Text("$\(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                            if price < 7 {
                                Text("$\(price, specifier: "%.2f") ")
                                    .foregroundColor(.green)
                            }
                        }
                        
                    }
                }
            } */
        }
    }
}

#Preview {
    MenuView()
}
