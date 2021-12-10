//
//  SearchView.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/6/21.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
        
    var body: some View {
        
        HStack {
            TextField("Country...", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant("Search"))
    }
}
