//
//  Article.swift
//  newsfeedSkeleton
//
//  Created by Kevin Nguyen on 4/2/22.
//

import Foundation

struct ArticleResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    
    let id: UUID = UUID()
    let author: String?
    let url: String?
    let source: String?
    let title: String?
    let welcomeDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title, image, date
        case welcomeDescription = "description"
    }
}

