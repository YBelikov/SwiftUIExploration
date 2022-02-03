import SwiftUI

struct HeaderView: View {
    let titleText: String
    @Binding var selectedTab: Int
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                ForEach(0..<Exercise.exercises.count) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)").onTapGesture {
                        selectedTab = index
                    }
                }
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(titleText: "Squat", selectedTab: .constant(1))
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            HeaderView(titleText: "Squat", selectedTab: .constant(1))
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
        }
    }
}
