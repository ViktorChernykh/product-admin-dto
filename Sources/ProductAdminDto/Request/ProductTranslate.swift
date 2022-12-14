//
//  ProductTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 07.04.2022.
//

import Foundation
import ProductDto

public struct ProductTranslateListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let langs: [String]?
    public let page: Int?
    public let per: Int?
    public let productIds: [UUID]?
    public let translatedName: String?
    public let translatedSpecification: String?
    public let translatedSubtitle: String?
    public let translatedUnit: String?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]? = nil,
        langs: [String]? = nil,
        page: Int? = nil,
        per: Int? = nil,
        productIds: [UUID]? = nil,
        translatedName: String? = nil,
        translatedSpecification: String? = nil,
        translatedSubtitle: String? = nil,
        translatedUnit: String? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
    ) {
        self.ids = ids
        self.langs = langs
        self.page = page
        self.per = per
        self.productIds = productIds
        self.translatedName = translatedName
        self.translatedSpecification = translatedSpecification
        self.translatedSubtitle = translatedSubtitle
        self.translatedUnit = translatedUnit
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct ProductTranslateCreateDto: Codable {
    // MARK: - Stored properties
    public let lang: String
    public let translatedName: String
    public let translatedSpecification: String?
    public let translatedSubtitle: String?
    public let translatedUnit: String
    public let productId: UUID

    // MARK: - Init
    public init(
        lang: String,
        translatedName: String,
        translatedSpecification: String? = nil,
        translatedSubtitle: String? = nil,
        translatedUnit: String,
        productId: UUID
    ) {
        self.lang = lang
        self.translatedName = translatedName
        self.translatedSpecification = translatedSpecification
        self.translatedSubtitle = translatedSubtitle
        self.translatedUnit = translatedUnit
        self.productId = productId
    }
}

public struct ProductTranslateUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let lang: String
    public let translatedName: String
    public let translatedSpecification: String?
    public let translatedSubtitle: String?
    public let translatedUnit: String

    // MARK: - Init
    public init(
        id: UUID,
        lang: String,
        translatedName: String,
        translatedSpecification: String? = nil,
        translatedSubtitle: String? = nil,
        translatedUnit: String
    ) {
        self.id = id
        self.lang = lang
        self.translatedName = translatedName
        self.translatedSpecification = translatedSpecification
        self.translatedSubtitle = translatedSubtitle
        self.translatedUnit = translatedUnit
    }
}

public struct ProductTranslateCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [ProductTranslateCreateDto]

    // MARK: - Init
    public init(items: [ProductTranslateCreateDto]) {
        self.items = items
    }
}

public struct ProductTranslateUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [ProductTranslateUpdateDto]

    // MARK: - Init
    public init(items: [ProductTranslateUpdateDto]) {
        self.items = items
    }
}
