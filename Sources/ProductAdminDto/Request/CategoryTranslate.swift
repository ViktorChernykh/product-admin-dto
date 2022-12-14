//
//  CategoryTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 06.04.2022.
//

import Foundation
import ProductDto

public struct CategoryTranslateListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let categoryIds: [UUID]?
    public let langs: [String]?
    public let page: Int?
    public let per: Int?
    public let translatedName: String?
    public let translatedSpecification: String?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]? = nil,
        categoryIds: [UUID]? = nil,
        langs: [String]? = nil,
        page: Int? = nil,
        per: Int? = nil,
        translatedName: String? = nil,
        translatedSpecification: String? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
    ) {
        self.ids = ids
        self.categoryIds = categoryIds
        self.langs = langs
        self.page = page
        self.per = per
        self.translatedName = translatedName
        self.translatedSpecification = translatedSpecification
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct CategoryTranslateCreateDto: Codable {
    // MARK: - Stored properties
    public let lang: String
    public let translatedName: String
    public let translatedSpecification: String?
    public let categoryId: UUID

    // MARK: - Init
    public init(
        lang: String,
        translatedName: String,
        translatedSpecification: String? = nil,
        categoryId: UUID
    ) {
        self.lang = lang
        self.translatedName = translatedName
        self.translatedSpecification = translatedSpecification
        self.categoryId = categoryId
    }
}

public struct CategoryTranslateUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let lang: String
    public let translatedName: String
    public let translatedSpecification: String?
    public let categoryId: UUID

    // MARK: - Init
    public init(
        id: UUID,
        lang: String,
        translatedName: String,
        translatedSpecification: String? = nil,
        categoryId: UUID
    ) {
        self.id = id
        self.categoryId = categoryId
        self.lang = lang
        self.translatedName = translatedName
        self.translatedSpecification = translatedSpecification
    }
}

public struct CategoryTranslateCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [CategoryTranslateCreateDto]

    // MARK: - Init
    public init(items: [CategoryTranslateCreateDto]) {
        self.items = items
    }
}

public struct CategoryTranslateUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [CategoryTranslateUpdateDto]

    // MARK: - Init
    public init(items: [CategoryTranslateUpdateDto]) {
        self.items = items
    }
}
