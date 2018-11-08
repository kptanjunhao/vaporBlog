//
//  Category.swift
//  App
//
//  Created by Sihoon Oh on 2018. 5. 27..
//

import Vapor
import FluentPostgreSQL

final class Category: Codable {
    var id: Int?
    var name: String
    var description: String
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

extension Category: PostgreSQLModel {}
extension Category: Migration {}
extension Category: Content {}

extension Category {
    var posts: Siblings<Category, Post, PostCategoryPivot> {
        return siblings()
    }
}
