//
//  Listing.swift
//  Ribbit
//
//  Created by Liza Bipin on 05/11/20.
//

import Foundation

//struct Listing: Decodable {
//    var posts = [Post]()
//    let data: String
//
//    enum CodingKeys: String, CodingKey {
//        case posts = "children"
//        case data
//    }
//}


struct Listing: Codable {
    let data: ListingData
}

// MARK: - WelcomeData
struct ListingData: Codable {
    let children: [Post]
  
}

// MARK: - Child
struct Post: Codable, Identifiable{
    let id = UUID()
    let data: PostData
}
