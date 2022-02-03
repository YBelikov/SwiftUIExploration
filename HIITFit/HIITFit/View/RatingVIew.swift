import SwiftUI

struct RatingVIew: View {
    @State var rating = 0
    let highestRating = 5
    private let onColor = Color.red
    private let offColor = Color.gray
    var body: some View {
        HStack {
            ForEach(1 ..< highestRating + 1) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(index <= rating ? onColor : offColor)
                    .font(.largeTitle)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}

struct RatingVIew_Previews: PreviewProvider {
    static var previews: some View {
        RatingVIew(rating: 3)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
