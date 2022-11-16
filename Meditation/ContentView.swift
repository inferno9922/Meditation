//
//  ContentView.swift
//  Meditation
//
//  Created by Inferno Inf on 13/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MeditationVeiw(meditationVM: MeditationVeiwModel(meditation: Meditation.data))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}
 
