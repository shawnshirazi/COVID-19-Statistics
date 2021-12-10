//
//  TabheaderView.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/5/21.
//

import SwiftUI

struct TabheaderView: View {
    var body: some View {
        
        TabView {
            
            covidview()
                .tabItem {
                    Tab(imageName: "chart.bar", text: "Recent")
                }
                .tag(0)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem {
                    Tab(imageName: "map", text: "Map")
                }
                .tag(1)
        }
        
    }
}

struct TabheaderView_Previews: PreviewProvider {
    static var previews: some View {
        TabheaderView()
    }
}

private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}
