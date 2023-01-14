//
//  HomeUseCase.swift
//  GithubUsers
//
//  Created by Wanhar on 11/01/23.
//

import Foundation
import Combine

protocol HomeUseCase: AnyObject {
    func getUsers() -> AnyPublisher<[UserResponse]?, APIError>
}

class HomeUseCaseImpl: BaseAPI<HomeEndPoint>, HomeUseCase {
    
    func getUsers() -> AnyPublisher<[UserResponse]?, APIError> {
       self.fetchData(target: .users, responseClass: [UserResponse].self)
    }
}
