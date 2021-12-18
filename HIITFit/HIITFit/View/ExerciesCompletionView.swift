import SwiftUI

struct ExerciseCompletionView: View {
    var body: some View {
        VStack {
            Image(systemName: "hand.raised.fill")
                .resizeToFill(width: 75, height: 95)
                .foregroundColor(.purple)
            Text("High five!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                Text("""
                     Good job completing all four excercises!
                     Remember tommorow is another day.
                     So eat well and get some rest.
                     """)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
    }
}

struct ExerciesCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCompletionView()
            .previewLayout(.sizeThatFits)
    }
}
