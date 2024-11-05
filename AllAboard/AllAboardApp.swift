//
//  AllAboardApp.swift
//  AllAboard
//
//  Created by bill donner on 11/5/24.
//

import SwiftUI

@main
struct AllAboardApp: App {
  @State var isOnboardingComplete: Bool = false
    var body: some Scene {
        WindowGroup {
          let _ = print("AllAboardApp isOnboardingComplete: \(isOnboardingComplete)")
          ContentView(isOnboardingComplete: $isOnboardingComplete)
        }
    }
}
