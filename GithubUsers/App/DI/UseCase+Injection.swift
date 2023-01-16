//
//  UseCase+Injection.swift
//  GithubUsers
//
//  Created by Wanhar on 16/01/23.
//

import Foundation
import Factory

extension Container {
    
    static let homeUseCaseInjected = Factory<HomeUseCase> { HomeUseCaseImpl() }
}
