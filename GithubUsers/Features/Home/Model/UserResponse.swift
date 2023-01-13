//
//  UserModel.swift
//  GithubUsers
//
//  Created by Wanhar on 11/01/23.
//

import Foundation

struct UserResponse: Decodable {
    var login: String?? = ""
    let id: Int?
    var nodeID: String?? = ""
    var avatarURL: String?? = ""
    var gravatarID: String?? = ""
    var url: String?? = ""
    var htmlURL: String?? = ""
    var followersURL: String?? = ""
    var followingURL: String?? = ""
    var gistsURL: String?? = ""
    let subscriptionsURL: String?? = ""
    let organizationsURL: String?? = ""
    let reposURL: String?? = ""
    let eventsURL: String?? = ""
    let receivedEventsURL: String?? = ""
    let type: String?? = ""
    let siteAdmin: Bool?? = false
}

extension UserResponse {
    enum CodingKeys: String, CodingKey {
        case login
        case id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
    }
}
