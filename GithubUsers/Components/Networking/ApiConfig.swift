//
//  ApiInfo.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Foundation

class ApiConfig {
    
    // MARK: - API Base URL
    static var apiBaseURL: String {
        #if DEV
        return "https://api.github.com"
        #elseif STAGING
        return "https://api.github.com"
        #elseif PRODUCTION
        return "https://api.github.com"
        #else
        return "https://api.github.com"
        #endif
    }
    
}
