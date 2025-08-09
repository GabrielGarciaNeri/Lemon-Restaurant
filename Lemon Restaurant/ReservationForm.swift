//
//  ReservationForm.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/7/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var name = ""
    @State private var guestCount = 1
    @State private var reservationDate = Date()  // date + time
    @State private var hasAllergies = false
    @State private var allergiesText = ""
    
    @State private var showConfirmation = false // controls the alert
    @State private var didSubmit = false   // just to show success pop up
    
    // Freezes the confirm pop up name and guest count so it doesn't change when the user edits the form after confirming
    @State private var submittedName = ""
    @State private var submittedGuestCount = 1
    @State private var submittedDate = Date()
    @State private var submittedAllergies: String? = nil
    
    var body: some View {
        NavigationView{
            Form {
                
                Section(header: Text("Reservation Details")) {
                    TextField("Enter your name", text: $name)
                    
                    if name.isEmpty {
                        Text("⚠️ Please enter your name")
                            .foregroundColor(.red)
                    }
                    
                    DatePicker(
                        "Date & Time",
                        selection: $reservationDate,
                        in: Date()...,  // Current Date none before
                        displayedComponents: [.date, .hourAndMinute]
                    )
                    
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                    
                    if guestCount > 5 {
                        Text("📞 For large parties, we will contact you")
                            .foregroundColor(.orange)
                    }
                }
                
                
                Section(header: Text("Allergies")) {
                    Toggle("Any allergies?", isOn: $hasAllergies.animation())
                    if hasAllergies {
                        TextEditor(text: $allergiesText)
                            .frame(minHeight: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                            .textInputAutocapitalization(.sentences)
                    }
                }
                
                
                Section {
                    Button("Confirm Reservation") {
                        showConfirmation = true
                    }
                    .disabled(name.isEmpty)
                }
                
                
                if didSubmit {
                    Section {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("✅ Reservation submitted!")
                                .foregroundColor(.green)
                            Text("Name: \(submittedName)")
                            Text("Guests: \(submittedGuestCount)")
                            Text("When: \(submittedDate.formatted(.dateTime.month().day().year().hour().minute()))")
                            if let a = submittedAllergies {
                                Text("Allergies: \(a)")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Reservation Form")
            // Alert
            .alert("Reservation Confirmed", isPresented: $showConfirmation) {
                Button("Cancel", role: .cancel) { }
                Button("Confirm") {
                    submittedName = name
                    submittedGuestCount = guestCount
                    submittedDate = reservationDate
                    let trimmed = allergiesText.trimmingCharacters(in: .whitespacesAndNewlines) //trims extra lines and empty spaces
                    submittedAllergies = (hasAllergies && !trimmed.isEmpty) ? trimmed : nil  //if statement. if hasAllergies is true and trimmed is not empty. Then set submittedAllergies to trimmed else set to nil. Short version of if - else
                    
                    // condition ? A : B
                    
                    withAnimation { didSubmit = true } //makes a fade in animation for didSubmit.
                }
            } message: {
                Text("Book a table on \(reservationDate.formatted(.dateTime.month().day().year().hour().minute())) "
                     + "for \(guestCount) under “\(name)”?")
            }
        }
    }
}

#Preview {
    NavigationView { ReservationForm() }
}
