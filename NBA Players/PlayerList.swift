//
//  PlayerList.swift
//  NBA Players
//
//  Created by Franklin Velásquez on 28/03/23.
//

import SwiftUI

struct PlayerList: View {
    
    // Old iOS [UIKIT] -> UITableView
    // SwiftUI -> List
    
    var body: some View {
        
        NavigationView{
            
            List(players){
                
                // for loop
                currentPlayer in
                
                NavigationLink(destination: PlayerDetail(player: currentPlayer)){
                    PlayerRow(player: currentPlayer)
                    .frame(height: 60)
                }
                    
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
