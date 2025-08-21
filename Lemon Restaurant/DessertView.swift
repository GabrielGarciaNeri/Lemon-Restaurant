//
//  DessertView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/20/25.
//

import SwiftUI

struct DessertView: View {
    
    let dessertMenuItems = [
        DessertItem(
            name: "Tiramisu",
            description: "Smooth Italian ladyfingers soaked in coffee and layered with a creamy mascarpone cheese mixture.",
            price: 12.99
        ),
        DessertItem(
            name: "Opera Cake",
            description: "A moist multi-layered cake with ganache, coffee buttercream, and almond sponge cake.",
            price: 14.99
        ),
        DessertItem(
            name: "Key Lime Pie",
            description: " Tart and creamy key lime pie with a graham cracker crust.",
            price: 11.99,
        )
        
    ]
    
    var body: some View {
        NavigationView {
            List(dessertMenuItems) { item in
                HStack{
                    Text(item.name)
                        .font(.headline)
                    
                    Spacer()
                    
                    Text(String(format: "%.2f", item.price))
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 5)
            }
            .navigationBarTitle("Desserts")
        }
    }
}



#Preview {
    DessertView()
}

