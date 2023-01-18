//
//  GithubUsersApp.swift
//  GithubUsers
//
//  Created by Wanhar on 08/01/23.
//

import SwiftUI

@main
struct GithubUsersApp: App {

    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
