//
//  Category.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 19.03.2022.
//

import Foundation
import ProductDto

public struct CategoryListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let externalIds: [String]?
    public let isVisible: Bool?
    public let lang: String?
    public let name: String?
    public let page: Int?
    public let parentIds: [UUID]?
    public let per: Int?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]?,
        externalIds: [String]?,
        isVisible: Bool?,
        lang: String?,
        name: String?,
        page: Int?,
        parentIds: [UUID]?,
        per: Int?,
        createdRange: DateRangeDto?,
        updatedRange: DateRangeDto?
    ) {
        self.ids = ids
        self.externalIds = externalIds
        self.isVisible = isVisible
        self.lang = lang
        self.name = name
        self.page = page
        self.parentIds = parentIds
        self.per = per
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct CategoryCreateDto: Codable {
    // MARK: - Stored properties
    public let externalId: String?
    public let image: String?
    public let isVisible: Bool
    public let name: String
    public let order: Int?
    public let specification: String?
    public let parentId: UUID?

    // MARK: - Init
    public init(
        externalId: String?,
        image: String?,
        isVisible: Bool,
        name: String,
        order: Int?,
        specification: String?,
        parentId: UUID?
    ) {
        self.externalId = externalId
        self.image = image
        self.isVisible = isVisible
        self.name = name
        self.order = order
        self.parentId = parentId
        self.specification = specification
    }
}

public struct CategoryUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let image: String?
    public let isVisible: Bool
    public let name: String
    public let order: Int?
    public let specification: String?
    public let parentId: UUID?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String?,
        image: String?,
        isVisible: Bool,
        name: String,
        order: Int?,
        specification: String?,
        parentId: UUID?
    ) {
        self.id = id
        self.externalId = externalId
        self.image = image
        self.isVisible = isVisible
        self.name = name
        self.order = order
        self.specification = specification
        self.parentId = parentId
    }
}

public struct CategoryCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [CategoryCreateDto]

    // MARK: - Init
    public init(items: [CategoryCreateDto]) {
        self.items = items
    }
}

public struct CategoryUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [CategoryUpdateDto]

    // MARK: - Init
    public init(items: [CategoryUpdateDto]) {
        self.items = items
    }
}
