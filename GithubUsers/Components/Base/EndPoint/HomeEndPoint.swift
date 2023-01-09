//
//  HomeEndPoint.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Foundation
import Alamofire

enum HomeEndPoint {
    case login(email:String, password: String)
    case users
}

extension HomeEndPoint : TargetType {
    
    var baseURL: String {
        return AppInfo.apiBaseURL
    }

    var path: RequestType {
        switch self {
        case .login:
            return .requestPath(path: "/api/login")
        case .users:
            return .requestPath(path: "/api/users")
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .login:
            return .post
        case .users:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .login(let email, let password):
            return .requestParameters(parameters: ["email": email, "password" : password], encoding:JSONEncoding.default)
        case .users:
            return .requestPlain
            
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default :
            return ["Content-Type":"application/json"]
        }
    }
}
