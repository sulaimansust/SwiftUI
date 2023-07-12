//
//  ContentView.swift
//  HIITFit
//
//  Created by Sulayman Md on 24.05.23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        OnboardingPagerView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
