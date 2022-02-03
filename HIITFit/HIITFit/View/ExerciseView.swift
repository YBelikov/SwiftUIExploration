import SwiftUI
import AVKit

struct ExerciseView: View {
    let timeInterval = 3.0
    let index: Int
    @State private var showHistory = false
    @State private var showSuccess = false
    @Binding var selectedTab: Int
    var isLastExcercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(titleText: Exercise.exercises[index].exerciseName, selectedTab: $selectedTab)
                    .padding(.bottom)
                if let exerciseVideoURL = Bundle.main.url(forResource: Exercise.exercises[index].videoName, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: exerciseVideoURL))
                        .frame(height: geometry.size.height * 0.45)
                    
                } else {
                    Text("Unable to find \(Exercise.exercises[index].exerciseName)")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(timeInterval), style: .timer)
                    .font(.system(size: 90))
                HStack(spacing: 150) {
                    Button(NSLocalizedString("Start", comment: "start exercise")) {}
                    Button(NSLocalizedString("Done", comment: "mark as done")) {
                        if isLastExcercise {
                            showSuccess.toggle()
                        } else {
                            selectedTab = index + 1
                        }
                    }
                    .sheet(isPresented: $showSuccess) {
                        SuccessView(selectedTab: $selectedTab)
                    }
                }
                RatingVIew()
                    .padding()
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {
                    showHistory.toggle()
                }
                .padding(.bottom)
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 3, selectedTab: .constant(1))
    }
}
