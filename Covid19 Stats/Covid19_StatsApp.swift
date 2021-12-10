//
//  Covid19_StatsApp.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/5/21.
//

import SwiftUI

@main
struct Covid19_StatsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabheaderView()
            //ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
