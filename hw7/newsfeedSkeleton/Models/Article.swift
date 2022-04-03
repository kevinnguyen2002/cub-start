//
//  Article.swift
//  newsfeedSkeleton
//
//  Created by Kevin Nguyen on 4/2/22.
//

import Foundation

struct Welcome: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let author: String?
    let url: String
    let source, title, articleDescription: String
    let image: String
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}
