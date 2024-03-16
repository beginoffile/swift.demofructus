//
//  FruitDetailView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 16/03/24.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                Spacer()
                VStack(alignment: .center, spacing: 20){
                    //: MARK - HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20, content: {
                        //: MARK - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //: MARK HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //: MARK NUTRIENTS
                        //: MARK SUBHEADLINE
                        Text("Lern more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //: DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //: LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }) //: VSTACK
                    .padding(.horizontal,40)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
