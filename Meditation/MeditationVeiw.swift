//
//  MeditationVeiw.swift
//  Meditation
//
//  Created by Inferno Inf on 13/10/2022.
//

import SwiftUI

struct MeditationVeiw: View {
    @StateObject var meditationVM: MeditationVeiwModel
    @State private var showPlayer = false
    var body: some View {
        VStack(spacing: 0) {
            
            // MARK: Image
            
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            // MARK: Meditation details
            ZStack{
                // MARK: Background
                Color(red: 24/255, green: 23/255, blue: 22/255)
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Type & Duraction
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "S")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    // MARK: Title
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    Button {
                        showPlayer = true
                        
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }

                    
                    //MARK: Description
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}


struct MeditationVeiw_Previews: PreviewProvider {
    static let meditationVM = MeditationVeiwModel(meditation: Meditation.data)
    static var previews: some View {
        MeditationVeiw(meditationVM: meditationVM)
            .environmentObject(AudioManager())
    }
}
