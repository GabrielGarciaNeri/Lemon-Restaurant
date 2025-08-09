//
//  AboutView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/5/25.
//

import SwiftUI

struct AboutView: View {
    let userName = "Gabriel"
    @State private var orders = 0
    @State private var userName2 = ""
    @State private var reservations = 0
    var body: some View {
        ZStack{  //acts a layer below the rest.
            Color.black.opacity(0.3)
                .ignoresSafeArea() // allows for color to reach the whole iphone
            VStack {
                Text("Welcome \(userName) to Little Lemon!")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        Capsule()
                            .fill(Color.black.opacity(0.9))
                    )
                    .overlay(
                        Capsule()
                            .stroke(Color.white, lineWidth: 5)
                    )
                    .offset(y: -80)
                
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 90) // Limit image height and width, width has to be put first.
                    .clipShape(RoundedRectangle(cornerRadius: 20)) //clipshape rounds the image corners
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 5)
                    )
                    .offset(y: -60)
                
                Text("You have ordered \(orders) times.")
                    
                    
                Button("Order again") {
                    orders += 1
                }
                
                
                Button("Reset orders"){
                    orders = 0
                    
                }.padding()
                
                //mini form
                TextField("Enter your name", text: $userName2)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Text("Hi \(userName2)")
                
                Button("Add reservation"){
                    reservations += 1
                    
                }
                Text("You made \(reservations) reservations")
                    .padding()
                Text(String(repeating:"🍽️", count:reservations))
                    .padding()
                
                //.border(.gray, width: 2) //adds a border around image but stays rectangular
                // Spacer() // Pushes the image to the top and Text to the bottom
                //could also use .offset(y:) to move the image up or down
                
                
            }
            .navigationTitle("About Us") // Screen title
        }
        
    }
}


#Preview {
    NavigationView {
        AboutView()
    }
}
