//
//  MessageHelper.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Foundation

struct MessageHelper {
    
    /// General Message Handler
    struct serverError {
        static let general : String = "Bad Request"
        static let noInternet : String = "Check the Connection"
        static let timeOut : String = "Timeout"
        static let notFound : String = "No Result"
        static let serverError : String = "Internal Server Error"
    }
}
