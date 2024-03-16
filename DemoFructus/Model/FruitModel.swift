//
//  FruitModel.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 15/03/24.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable{
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
