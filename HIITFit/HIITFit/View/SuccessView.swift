import SwiftUI

struct SuccessView: View {
    @Binding var selectedTab: Int
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            ExerciseCompletionView()
            VStack {
                Spacer()
                Button("Continue") {
                    presentationMode.wrappedValue.dismiss()
                    selectedTab = 9
                }
                .font(.title2)
                .padding()
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}


