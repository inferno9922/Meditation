//
//  MeditationViewModel.swift
//  Meditation
//
//  Created by Inferno Inf on 13/10/2022.
//

import Foundation

final class MeditationVeiwModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
}

struct Meditation {
    
    let id = UUID()
    let title: String
    let description: String
    let duration : TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "1 minute relaxing meditation", description: "Clear your mind and slumber into nothingnees.", duration: 70, track: "meditation1", image: "image-stones")
    
}
