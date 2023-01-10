//
//  UnidirectionalDataFlowType.swift
//  GithubUsers
//
//  Created by Wanhar on 10/01/23.
//

import Foundation

protocol UnidirectionalDataFlowType {
    associatedtype InputType
    
    func apply(_ input: InputType)
}
