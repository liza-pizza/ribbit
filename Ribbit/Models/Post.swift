//
//  Posts.swift
//  Ribbit
//
//  Created by Liza Bipin on 05/11/20.
//

import Foundation

struct PostData: Codable, Identifiable {
    let title, id, name, selftext: String
    let selftextHTML: String?
    let thumbnail: String
    let url: String
    let author, subreddit: String
    
    //metadata
    let score, numComments: Int
    let stickied: Bool
    let createdUTC: Double
    let preview: Preview?
    
    enum CodingKeys: String, CodingKey {
        case title, id, name, selftext
        case selftextHTML = "selftext_html"
        case thumbnail, url, author, subreddit, score
        case numComments = "num_comments"
        case stickied
        case createdUTC = "created_utc"
        case preview
    }
}

// MARK: - Preview
struct Preview: Codable {
    let images: [Images]?
    let enabled: Bool?
}

// MARK: - Image
struct Images: Codable {
    let source: Source
    let resolutions: [Source]
    let id: String
}

// MARK: - Source
struct Source: Codable {
    let url: String
    let width, height: Int
}


extension PostData {
    /// Used to create a Post for example Debug purposes
    static var example: Self {
        
        let eg = PostData(  title: "Hello World | This is secondary text", id: "hw",  name: "hello-world", selftext: "This is some body content. Blah blah\nblah blah blah", selftextHTML: nil, thumbnail: "blahblah", url: "", author: "me", subreddit: "swift", score: 1000, numComments: 50, stickied: true, createdUTC: Double(Date().timeIntervalSince1970) - 100, preview: nil)
        
        return eg
    }
}
