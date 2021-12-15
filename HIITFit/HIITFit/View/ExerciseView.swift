import SwiftUI
import AVKit

struct ExerciseView: View {
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let timeInterval = 3.0
    let index: Int
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exerciseNames[index])
                    .padding(.bottom)
                if let exerciseVideoURL = Bundle.main.url(forResource: videoNames[index], withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: exerciseVideoURL))
                        .frame(height: geometry.size.height * 0.45)
                    
                } else {
                    Text("Unable to find \(exerciseNames[index])")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(timeInterval), style: .timer)
                    .font(.system(size: 90))
                Button("Start/Done") {}
                    .font(.title3)
                RatingVIew()
                    .padding()
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
