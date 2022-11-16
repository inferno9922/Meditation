//
//  PlaybackContorolButton.swift
//  Meditation
//
//  Created by Inferno Inf on 13/10/2022.
//

import SwiftUI

struct PlaybackContorolButton: View {
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }

    }
}

struct PlaybackContorolButton_Previews: PreviewProvider {
    static var previews: some View {
        PlaybackContorolButton(action: {})
            .preferredColorScheme(.dark)
    }
}
