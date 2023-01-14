//
//  HomeView.swift
//  GithubUsers
//
//  Created by Wanhar on 10/01/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.usersData, id: \.id) { item in
                    if let user = item.login {
                        Text("User \(user)")
                            .foregroundColor(.black)
                    }
                }
            }.onAppear {
                self.viewModel.getUserList()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
