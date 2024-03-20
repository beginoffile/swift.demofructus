//
//  ContentView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 14/03/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
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
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }) //: BUTTON
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            )
         
        
        } //: NAVIGATON
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
    
}
