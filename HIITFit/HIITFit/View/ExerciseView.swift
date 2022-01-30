import SwiftUI
import AVKit

struct ExerciseView: View {
    let timeInterval = 3.0
    let index: Int
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(titleText: Exercise.exercises[index].exerciseName)
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
                Button(NSLocalizedString("Start/Done", comment: "start exercise / mark as done")) {}
                    .font(.title3)
                RatingVIew()
                    .padding()
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {}
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
