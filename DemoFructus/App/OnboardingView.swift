//
//  OnboardingView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 15/03/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...fruits.count-1]){ item in
                FruitCardView(fruits: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView(fruits: fruitsData)
}
