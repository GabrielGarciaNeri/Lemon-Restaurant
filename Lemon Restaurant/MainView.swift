//
//  MainView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/9/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedin = false
    @State private var userName: String = ""
 
    
    var body: some View {
        NavigationView {
            if isLoggedin == true {
                VStack{
                    Text("Welcome \(userName)!")
                        .padding()
                        .font(.title)
                    NavigationLink("Make a Reservation", destination: ReservationForm())
                        .padding()
                    NavigationLink("About us", destination: AboutView())
                    
                    Button("Logout"){
                        isLoggedin = false
                        userName = ""
                    }
                    .padding()
                    
                }
            }else {
                LoginView( userName: $userName, isLoggedin: $isLoggedin)
            }
            
        }
    }
}

#Preview {
    MainView()
}
