//
//  Injection.swift
//  GithubUsers
//
//  Created by Wanhar on 15/01/23.
//

import Foundation
import Factory

extension Container {
    
    static let homeViewModelInjected = Factory<HomeViewModelBaseProtocol> { HomeViewModel() }
}
