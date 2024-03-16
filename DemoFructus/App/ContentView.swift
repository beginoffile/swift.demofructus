//
//  ContentView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 14/03/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        
        } //: NAVIGATON
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
    
}
