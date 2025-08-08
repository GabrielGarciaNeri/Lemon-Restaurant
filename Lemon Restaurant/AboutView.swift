//
//  AboutView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/5/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack{  //acts a layer below the rest.
            Color.black.opacity(0.3)
                .ignoresSafeArea() // allows for color to reach the whole iphone
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 100) // Limit image height and width, width has to be put first.
                    .clipShape(RoundedRectangle(cornerRadius: 20)) //clipshape rounds the image corners
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.yellow, lineWidth: 3)
                    )
                //.border(.gray, width: 2) //adds a border around image but stays rectangular
                Spacer() // Pushes the image to the top and Text to the bottom
                //could also use .offset(y:) to move the image up or down
                
                Text("Welcome to Little Lemon!")
                    .font(.headline) // Font of Text
                    .padding()
                    .background(
                        Capsule()
                            .fill(Color.yellow)
                    )
                    .overlay(
                        Capsule()
                            .stroke(Color.black, lineWidth: 3)
                    )
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
