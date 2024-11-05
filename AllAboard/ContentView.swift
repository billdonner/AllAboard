import SwiftUI



struct ContentView: View {

@Binding var isOnboardingComplete: Bool
    var body: some View {
        VStack {
            if isOnboardingComplete {
              GameView(isOnboardingComplete: $isOnboardingComplete) // Main app content displayed after onboarding
            } else {
              InnerOnboardingView(isOnboardingComplete: $isOnboardingComplete)
            }
        }
    }
}

// Main app view displayed after the user completes or exits onboarding
struct GameView: View {

  @Binding var isOnboardingComplete: Bool 
  var body: some View {
    VStack {
      Text("Welcome to the Game!")
        .font(.largeTitle)
        .padding()
      
      Text("Main game content goes here.")
        .padding()
      
      Button("Reset Onboarding"){
        isOnboardingComplete = false
      }
    }
  }
}

#Preview {
  ContentView(isOnboardingComplete: .constant(false))
}
