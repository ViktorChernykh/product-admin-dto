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
        ids: [UUID]? = nil,
        externalIds: [String]? = nil,
        isVisible: Bool? = nil,
        lang: String? = nil,
        name: String? = nil,
        page: Int? = nil,
        parentIds: [UUID]? = nil,
        per: Int? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
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
        externalId: String? = nil,
        image: String? = nil,
        isVisible: Bool,
        name: String,
        order: Int? = nil,
        specification: String? = nil,
        parentId: UUID? = nil
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
        externalId: String? = nil,
        image: String? = nil,
        isVisible: Bool,
        name: String,
        order: Int? = nil,
        specification: String? = nil,
        parentId: UUID? = nil
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
