//
//  ApiInfo.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Foundation

class AppInfo {
    
    // MARK: - API Base URL
    static var apiBaseURL: String {
        #if DEV
        return "https://reqres.in"
        #elseif STAGING
        return "https://reqres.in"
        #elseif PRODUCTION
        return "https://reqres.in"
        #else
        return "https://private-444444.apiary-mock.com"
        #endif
    }
    
}
