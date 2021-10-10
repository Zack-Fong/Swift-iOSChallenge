//
//  MindFi_iOS_ChallengeApp.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 9/10/21.
//

import SwiftUI

@main
struct MindFi_iOS_ChallengeApp: App {
    @Environment(\.scenePhase) private var phase
    
    var body: some Scene {
        WindowGroup {
            MentorsListScreen().preferredColorScheme(.light)
        }
        .onChange(of: phase) { _ in
            let window = UIApplication.shared.windows.first
            window?.overrideUserInterfaceStyle = .light
       }
    }
}
