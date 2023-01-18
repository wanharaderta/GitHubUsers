//
//  MockHomeUseCase.swift
//  GithubUsersTests
//
//  Created by Wanhar on 16/01/23.
//

import Foundation
import Combine
@testable import GithubUsers

class MockHomeUseCase: HomeUseCase {
    
    func getUsers() -> AnyPublisher<[GithubUsers.UserResponse]?, GithubUsers.APIError> {
        fatalError("error")
    }

}
