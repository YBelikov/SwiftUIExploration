import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
            ExerciseCompletionView()
            VStack {
                Spacer()
                Button("Continue") {}
                    .font(.title2)
                    .padding()
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}


