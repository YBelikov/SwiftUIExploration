import SwiftUI

extension Image {
    func resizeToFill(width: CGFloat, height: CGFloat) -> some View {
        return self.resizable()
            .frame(width: width, height: height)
            .aspectRatio(contentMode: .fill)
    }
}
