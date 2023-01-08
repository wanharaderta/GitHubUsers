//
//  GithubUsersApp.swift
//  GithubUsers
//
//  Created by Wanhar on 08/01/23.
//

import SwiftUI

@main
struct GithubUsersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
