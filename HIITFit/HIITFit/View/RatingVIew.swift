import SwiftUI

struct RatingVIew: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 5) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
            }
        }
    }
}

struct RatingVIew_Previews: PreviewProvider {
    static var previews: some View {
        RatingVIew()
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
