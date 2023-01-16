//
//  HomeViewModel.swift
//  GithubUsers
//
//  Created by Wanhar on 11/01/23.
//

import Foundation
import Combine
import Factory

protocol HomeViewModelBaseProtocol: ViewModelBaseProtocol {
    func getUserList()
}

class HomeViewModel: ObservableObject, HomeViewModelBaseProtocol {
    
    private let useCase: HomeUseCase = Container.homeUseCaseInjected()
    
    var loadinState = CurrentValueSubject<ViewModelStatus, Never>(.dismissAlert)
    var subscriber = Set<AnyCancellable>()
    @Published var usersData: [UserResponse] = []
    
    func getUserList() {
        self.loadinState.send(.loadStart)
        self.useCase.getUsers()
            .receive(on: DispatchQueue.main)
            .sink { data in
                self.loadinState.send(.dismissAlert)
            } receiveValue: { [weak self] data in
                self?.usersData = data ?? []
            }
            .store(in: &subscriber)
            
    }
    
}
