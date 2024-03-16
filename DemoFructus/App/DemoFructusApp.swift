//
//  DemoFructusApp.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 14/03/24.
//

import SwiftUI

@main
struct DemoFructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
