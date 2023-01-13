//
//  HomeViewModel.swift
//  GithubUsers
//
//  Created by Wanhar on 11/01/23.
//

import Foundation
import Combine

typealias homeViewModel = ViewModelBaseProtocol & HomeViewModelBaseProtocol

protocol HomeViewModelBaseProtocol {
    func getUserList()
}

class HomeViewModel: ObservableObject, homeViewModel {
    
    var loadinState = CurrentValueSubject<ViewModelStatus, Never>(.dismissAlert)
    var subscriber = Set<AnyCancellable>()
    
    func getUserList() {
    
    }
    
    
}
