//
//  LoginView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/9/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var userName: String
    @Binding var isLoggedin: Bool
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:60)
                    .padding()
                
                TextField("Enter the username", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login"){
                    if userName == "Gabriel"{
                        isLoggedin = true
                        
                    }else{
                        isLoggedin = false
                        errorMessage = "Invalid username"
                    }
                }
                .padding()
                
                Text(errorMessage)
                    .foregroundColor(.red)
                
            }
        }
    }
}

//#Preview {
  //  LoginView()
//}
