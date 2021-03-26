//
//  NASATestApp.swift
//  NASATest
//
//  Created by Ömer Faruk on 12.02.2021.
//

import SwiftUI

@main
struct NASATestApp: App {
    
    @StateObject var filter = Filtering()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(filter)
        }
    }
}
