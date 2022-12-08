//
//  ContentView.swift
//  CombineView
//
//  Created by Md Sulayman on 08.12.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
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
                    Spacer()
                    Text("Bangaldesh")
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                Text("About Sundarban")
                    .font(.title2)
                Text("World largest mangrove forest.")
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
