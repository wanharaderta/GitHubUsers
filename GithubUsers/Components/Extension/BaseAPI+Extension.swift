//
//  BaseAPI+Extension.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Foundation
import Alamofire

extension BaseAPI  {

    func buildParameters(task: Task) -> ([String:Any], ParameterEncoding) {
        switch task {
        case .requestPlain:
            return ([:], URLEncoding.default)
        case .requestParameters(parameters: let parameters, encoding: let encoding):
            return (parameters, encoding)
        }
    }
    
    func buildTarget(target : RequestType) -> String {
        switch target {
        case .requestPath(path: let path):
            return path
        case .queryParametrs(query: let query):
            return query
        }
    }
}
