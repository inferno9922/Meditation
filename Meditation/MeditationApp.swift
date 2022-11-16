//
//  MeditationApp.swift
//  Meditation
//
//  Created by Inferno Inf on 13/10/2022.
//

import SwiftUI

@main
struct MeditationApp: App {
    @StateObject var audioManger = AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManger)
        }
    }
}
