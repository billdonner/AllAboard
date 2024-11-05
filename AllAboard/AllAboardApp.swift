//
//  AllAboardApp.swift
//  AllAboard
//
//  Created by bill donner on 11/5/24.
//

import SwiftUI

@main
struct AllAboardApp: App {
  
  @AppStorage("OnboardingDone") private var onboardingdone = false
    var body: some Scene {
        WindowGroup {
          let _ = print("AllAboardApp onboardingdone: \(onboardingdone)")
          ContentView(isOnboardingComplete: $onboardingdone)
        }
    }
}
