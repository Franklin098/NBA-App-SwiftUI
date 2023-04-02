//
//  StatText.swift
//  NBA Players
//
//  Created by Franklin Velásquez on 26/03/23.
//

import SwiftUI

struct StatText: View {
    
    // pass parameters to our custom component
    var statName: String
    var statValue: String
    
    
    var body: some View {
        
        HStack(alignment: .center){
            
            Text(statName + ":")
                .padding(.leading, 30)
                .font(.system(size: 45))
                .fontWeight(.bold)
            
            Text(statValue)
                .padding(.trailing, 30)
                .font(.system(size: 45))
                .fontWeight(.light)
            
            Spacer()
            
        }.minimumScaleFactor(0.5) // decrease the size up to a half
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "31")
    }
}
