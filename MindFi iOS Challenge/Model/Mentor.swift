//
//  Mentor.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import SwiftUI

struct Mentor : Identifiable, Codable {
    var id: Int
    var username: String
    var image: String
    var type: String
    var githubURL: String
    
    var name: String?
    var company: String?
    var email: String?
    var location: String?
    var bio: String?
    
    var publicRepos: Int?
    var publicGists: Int?
    var followers: Int?
    var following: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case username = "login"
        case image = "avatar_url"
        case type
        case githubURL = "html_url"
        
        case name
        case company
        case email
        case location
        case bio
        
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
        case followers
        case following
    }
}
