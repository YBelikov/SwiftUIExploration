import SwiftUI

struct ContentView: View {
    @State var selectedTab = 9
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab).tag(9)
            ForEach(0..<Exercise.exercises.count) { tabIndex in
                ExerciseView(index: tabIndex, selectedTab: $selectedTab).tag(tabIndex)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
