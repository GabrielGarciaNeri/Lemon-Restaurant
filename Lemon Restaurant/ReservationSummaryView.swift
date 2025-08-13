//
//  ReservationSummaryView.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/12/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var guestCount: Int
    @Binding var date: Date
    @Binding var hasAllergies: Bool
    @Binding var allergiesText: String
    
    var body: some View {
        Form {
            Section(header: Text("Reservation Summary")) {
                Text("Name: \(name)")
                Text("Guests: \(guestCount)")
                Text("When: \(date.formatted(.dateTime.month().day().hour().minute()))")
                if hasAllergies, !allergiesText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    Text("Allergies: \(allergiesText)")
                }
            }
        }
        .navigationTitle(Text("Reservation Summary"))
    }
}

#Preview {
    ReservationSummaryView(
        name: .constant("Gabriel"), //to be able to view as i edit!
        guestCount: .constant(4),
        date: .constant(.now),
        hasAllergies: .constant(true),
        allergiesText: .constant("Peanuts")
    )
}
