//
//  BaseResponse.swift
//  GithubUsers
//
//  Created by Wanhar on 11/01/23.
//

import Foundation

class BaseResponse<T: Decodable>: Decodable {
    //base response handler
    var data: T?
}

extension BaseResponse {
    private enum CodingKeys: String, CodingKey {
        case data
    }
}
