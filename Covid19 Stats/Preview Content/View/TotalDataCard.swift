//
//  TotalDataCard.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/6/21.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader { gemoetry in
            
            VStack {
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
            }
            .frame(width: gemoetry.size.width, height: 80.0, alignment: .center)
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8.0)
        }
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
