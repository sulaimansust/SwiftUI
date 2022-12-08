//
//  ContentView.swift
//  CombineView
//
//  Created by Md Sulayman on 08.12.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
            Text("Sundarban")
                .font(.title)
                .padding(0.0)
                .foregroundColor(.green)
            HStack {
                Text("Khulna District")
                    .font(.subheadline)
                Text("Bangaldesh")
                    .font(.subheadline)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
