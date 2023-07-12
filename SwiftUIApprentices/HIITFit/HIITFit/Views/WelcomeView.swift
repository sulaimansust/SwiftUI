//
//  WelcomeView.swift
//  HIITFit
//
//  Created by Sulayman Md on 24.05.23.
//

import SwiftUI

struct WelcomeView: View {
    var text: String
    init(text: String) {
        self.text = text
    }
    var body: some View {
        Text(text)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(text: "Hello")
    }
}
