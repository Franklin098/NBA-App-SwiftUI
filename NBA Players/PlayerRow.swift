//
//  PlayerRow.swift
//  NBA Players
//
//  Created by Franklin Velásquez on 26/03/23.
//

import SwiftUI

struct PlayerRow: View {
    
    var player:Player
    
    var body: some View {
        HStack{
            Image(player.imageName)
                .resizable().aspectRatio(contentMode: .fit)
                .background(Circle())
                .foregroundColor(player.team.color)
                .clipShape(Circle())
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
 
        
                
            Text(player.name)
                .font(.largeTitle)
            
            Spacer()
        }
        
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        
        // we can specify custom sizes for our previews, here we create a row
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
