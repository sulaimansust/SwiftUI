//
//  ListAndNavigationApp.swift
//  ListAndNavigation
//
//  Created by Md Sulayman on 08.12.22.
//

import SwiftUI

@main
struct ListAndNavigationApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
