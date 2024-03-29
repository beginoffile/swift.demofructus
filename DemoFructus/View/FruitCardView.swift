//
//  FruitCardView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 14/03/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    var fruits: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruits.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x:6, y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                Text(fruits.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green:0, blue:0, opacity: 0.15 ), radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                Text(fruits.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        }//: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
//        .ignoresSafeArea(.all, edges: .all)
        .padding(.horizontal,20)
    }
}


// MARK: - PREVIEW
#Preview {
    FruitCardView(fruits: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
