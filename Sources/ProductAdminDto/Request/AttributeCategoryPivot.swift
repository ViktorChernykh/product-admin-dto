//
//  AttributeCategoryPivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 15.09.2022.
//

import Foundation
import ProductDto

public struct AttributeCategoryListDto: Codable {
    // MARK: - Stored properties
    public let attributeId: UUID?
    public let categoryId: UUID?
    public let externalIds: [String]?
    public let page: Int?
    public let per: Int?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        attributeId: UUID? = nil,
        categoryId: UUID? = nil,
        externalIds: [String]? = nil,
        page: Int? = nil,
        per: Int? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
    ) {
        self.attributeId = attributeId
        self.categoryId = categoryId
        self.externalIds = externalIds
        self.page = page
        self.per = per
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct AttributeCategoryCreateDto: Codable {
    // MARK: - Stored properties
    public let attributeId: UUID
    public let categoryId: UUID
    public let externalId: String?

    // MARK: - Init
    public init(
        attributeId: UUID,
        categoryId: UUID,
        externalId: String? = nil
    ) {
        self.externalId = externalId
        self.attributeId = attributeId
        self.categoryId = categoryId
    }
}

public struct AttributeCategoryUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let attributeId: UUID
    public let categoryId: UUID
    public let externalId: String?

    // MARK: - Init
    public init(
        id: UUID,
        attributeId: UUID,
        categoryId: UUID,
        externalId: String? = nil
    ) {
        self.id = id
        self.externalId = externalId
        self.attributeId = attributeId
        self.categoryId = categoryId
    }
}

public struct AttributeCategoryDeleteDto: Codable {
    // MARK: - Stored properties
    public let attributeId: UUID
    public let categoryId: UUID
    public let externalId: String?

    // MARK: - Init
    public init(
        attributeId: UUID,
        categoryId: UUID,
        externalId: String? = nil
    ) {
        self.attributeId = attributeId
        self.categoryId = categoryId
        self.externalId = externalId
    }
}

public struct AttributeCategoryCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [AttributeCategoryCreateDto]

    // MARK: - Init
    public init(items: [AttributeCategoryCreateDto]) {
        self.items = items
    }
}

public struct AttributeCategoryUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [AttributeCategoryUpdateDto]

    // MARK: - Init
    public init(items: [AttributeCategoryUpdateDto]) {
        self.items = items
    }
}
