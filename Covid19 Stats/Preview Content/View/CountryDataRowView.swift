//
//  CountryDataRowView.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/5/21.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        HStack {
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 100, alignment: .leading)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
                .font(.subheadline)
                .frame(height: 40)
                //.padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
                //.frame(width: 50, height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
                .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
                //.frame(width: 50, height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.green)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
