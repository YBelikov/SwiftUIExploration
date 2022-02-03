import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: NSLocalizedString("Welcome", comment: "greeting"), selectedTab: $selectedTab)
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {
                    showHistory.toggle()
                }
                .padding(.bottom)
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
            }
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text(NSLocalizedString("Get fit", comment: "invitation to start exercises"))
                            .font(.largeTitle)
                        Text("with high intensity training")
                            .font(.headline)
                    }
                    .padding()
                    Image("step-up")
                        .resizeToFill(width: 240.0, height: 240.0)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: { selectedTab = 0 }) {
                    Text(NSLocalizedString("Get started", comment: "invitation"))
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 2.0))
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(1))
    }
}
