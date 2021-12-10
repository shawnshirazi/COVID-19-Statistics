//
//  covidview.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/5/21.
//

import SwiftUI

struct covidview: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    @State var isSearchVisible = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                
                TotalDataView(totalData: covidFetch.totalData)
                ListHeaderView()
                
                List {
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        NavigationLink(
                            destination: CountryDetailView(countryData: countryData)) {
                            CountryDataRowView(countryData: countryData)
                        }
                    }
                }
                .frame(width: 440)
            }
            .navigationBarTitle("Recent Data", displayMode: .inline)
            .navigationBarItems(trailing:
            
                    Button(action: {
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible {
                            self.searchText = ""
                        }
                        
                    }, label: {
                    Image(systemName: "magnifyingglass")
                })
            )
        }
    }
}

struct covidview_Previews: PreviewProvider {
    static var previews: some View {
        covidview()
    }
}
