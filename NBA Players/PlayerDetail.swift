//
//  PlayerDetail.swift
//  NBA Players
//
//  Created by Franklin Velásquez on 25/03/23.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player: Player
    
    var body: some View {
        
        // VStack -> vertical stack
        VStack{
            
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            
            Image(player.imageName).clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15)
                .offset(x:0, y:  -90).padding(.bottom, -70)
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .padding(.horizontal, 10.0)
                .lineLimit(1)
                .minimumScaleFactor(0.5) // cut the font size up to a half
            
            // show our custom view
            StatText(statName: "Age", statValue: "\(player.age)" )
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: "\(player.weight)")
            
            Spacer() // the spacer is a view that takes as much space as it possible can
            
        }.edgesIgnoringSafeArea(.top)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            
            
            PlayerDetail(player: players[2])
                .previewDevice("iPhone 14")
            
            // Test different or same devices with different accesibility font size
            
            PlayerDetail(player: players[2])
                .environment(\.sizeCategory, .extraExtraExtraLarge)
                .previewDevice("iPhone SE (3rd generation)")
            
            PlayerDetail(player: players[2])
                .environment(\.sizeCategory, .extraSmall)
                .previewDevice("iPhone SE (3rd generation)")
            
            PlayerDetail(player: players[2]).previewDevice("iPhone 14 Pro Max")
            
            PlayerDetail(player: players[2]).previewDevice("iPad Air (5th generation)")

        }
        
    
    }
}
