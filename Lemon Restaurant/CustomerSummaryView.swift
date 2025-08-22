//
//  CustomerSummaryView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/21/25.
//

import SwiftUI

struct CustomerSummaryView: View {
    @State private var customer = Customer(
        name: "Alice",
        email: "alice@example.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Pizza", "Pasta"])
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing:16) {
            Text("Customer Summary")
                .font(.title)
                .bold()
            Text("Name: \(customer.name)")
            Text("Email: \(customer.email)")
            HStack(){
                if !customer.isLoyaltyMember{
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                }else {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Is loyalty Member!")
                        .foregroundColor(.green)
                }
                
            }
            Text("Favorites: \(customer.favoriteDishes.joined(separator: ", "))")
            
            Divider()
                
            
            if customer.isLoyaltyMember{
                Text(" \(customer.name) is a loyalty member. Favorite dishes are \(customer.favoriteDishes.joined(separator: ", "))")
            }else {
                Text(" \(customer.name) is not a loyalty member.")
            }
                
            
            Toggle("Loyalty Member", isOn: $customer.isLoyaltyMember)
        }
        //.frame(width: UIScreen.main.bounds.width * 0.7)
        .padding(20)
        
        
        
        
    }
}

#Preview {
    CustomerSummaryView()
}
