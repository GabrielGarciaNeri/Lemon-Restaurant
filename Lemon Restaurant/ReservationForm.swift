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
    @State private var navigateToSummary = false
    
    //book only 14 days ahead
    
    //Calender.current gets the current somethigof the user .date will be what the current is.
    //byAdding:something  value to something
    private var twoWeekAhead: Date {
            Calendar.current.date(byAdding: .day, value: 14, to: Date())!
        }
    
    var body: some View {
         NavigationStack {
             Form {
                 Section(header: Text("Reservation Details")) {
                     TextField("Enter your name", text: $name)

                     if name.isEmpty {
                         Text("⚠️ Please enter your name").foregroundColor(.red)
                     }

                     DatePicker(
                        "Date & Time",
                        selection: $reservationDate,
                        in: Date()...twoWeekAhead,
                        displayedComponents: [.date, .hourAndMinute])

                     Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)

                     if guestCount > 8 {
                         Text("📞 For parties larger than 8, we will call to confirm")
                             .foregroundColor(.red)
                     } else if guestCount >= 5 {
                         Text("⏰ For large parties, please arrive 10 minutes early")
                             .foregroundColor(.orange)
                     }
                 }

                 Section(header: Text("Allergies")) {
                     Toggle("Any allergies?", isOn: $hasAllergies.animation())
                     if hasAllergies {
                         TextEditor(text: $allergiesText)
                             .frame(minHeight: 50)
                             .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray.opacity(0.3)))
                             .textInputAutocapitalization(.sentences)
                     }
                 }

                 Section {
                     Button("Confirm Reservation") { showConfirmation = true }
                         .disabled(name.isEmpty)
                 }
             }
             .navigationTitle("Reservation Form")
             .alert("Confirm Reservation", isPresented: $showConfirmation) {
                 Button("Cancel", role: .cancel) { }
                 Button("Confirm") {
                     
                     //trims empty white space in allergies text
                     allergiesText = allergiesText.trimmingCharacters(in: .whitespacesAndNewlines)

                     
                     // Navigates after user confirms
                     navigateToSummary = true
                 }
             } message: {
                 Text("Book a table on \(reservationDate.formatted(.dateTime.month().day().hour().minute())) for \(guestCount) under “\(name)”?")
             }
             .navigationDestination(isPresented: $navigateToSummary) {
                    ReservationSummaryView(
                        name: $name,
                        guestCount: $guestCount,
                        date: $reservationDate,
                        hasAllergies: $hasAllergies,
                        allergiesText: $allergiesText
                    )
            }
         }
     }
 }

 #Preview {
     NavigationView { ReservationForm() }
 }
