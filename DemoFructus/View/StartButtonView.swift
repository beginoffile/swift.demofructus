//
//  StartButtonView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 15/03/24.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - PROPERTIES
    // MARKK: - BODY
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }) //: BUTTON
        .accentColor(Color.white)
        
    }
}

// MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
