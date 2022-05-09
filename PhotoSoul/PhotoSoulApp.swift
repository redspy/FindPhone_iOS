//
//  PhotoSoulApp.swift
//  PhotoSoul
//
//  Created by Minsu Han on 2022/05/09.
//

import SwiftUI

@main
struct PhotoSoulApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
