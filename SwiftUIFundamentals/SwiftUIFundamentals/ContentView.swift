//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Sulayman Md on 05.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding([.top, .leading, .bottom])
            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.all)
                .background(Color.orange)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding([.top, .leading, .bottom])
    }
}
