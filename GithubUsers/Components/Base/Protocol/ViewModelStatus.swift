//
//  ViewModelStatus.swift
//  GithubUsers
//
//  Created by Wanhar on 10/01/23.
//

import Foundation
import Combine

enum ViewModelStatus : Equatable {
    case loadStart
    case dismissAlert
    case emptyStateHandler(title : String, isShow : Bool)
}

protocol BaseViewModelEventSource : AnyObject {
    var loadinState : CurrentValueSubject<ViewModelStatus, Never> { get }
    var subscriber : Set<AnyCancellable> { get }
}

protocol BaseViewModelUseCase : AnyObject {
    func callWithProgress<ReturnType>(argument: AnyPublisher<ReturnType?, APIError>, callback: @escaping (_ data: ReturnType?) -> Void)
}

typealias StandardBaseViewModel = BaseViewModelEventSource & BaseViewModelUseCase
