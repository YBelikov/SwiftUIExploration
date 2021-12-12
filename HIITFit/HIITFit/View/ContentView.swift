//
//  ContentView.swift
//  HIITFit
//
//  Created by user on 12/12/21.
//

import SwiftUI

struct ContentView: View
{
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(0..<4) { tabIndex in
                ExerciseView(index: tabIndex)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
