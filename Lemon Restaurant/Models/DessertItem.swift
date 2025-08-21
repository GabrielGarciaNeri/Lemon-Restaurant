//
//  DessertItem.swift
//  Lemon Restaurant
//
//  Created by Jr . on 8/20/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id:UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
