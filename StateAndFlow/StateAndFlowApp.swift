//
//  StateAndFlowApp.swift
//  StateAndFlow
//
//  Created by horze on 10.03.2024.
//

import SwiftUI

@main
struct StateAndFlowApp: App {
    @StateObject private var contentViewVM = ContentViewViewModel()
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(contentViewVM)
        .environmentObject(loginViewVM)
    }
    
}
