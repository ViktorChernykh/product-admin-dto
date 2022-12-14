//
//  AttributeValue.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.09.2022.
//

import Foundation
import ProductDto

public struct AttributeValueListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let attributeIds: [UUID]?
    public let externalIds: [String]?
    public let value: String?
    public let page: Int?
    public let per: Int?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]? = nil,
        attributeIds: [UUID]? = nil,
        externalIds: [String]? = nil,
        value: String? = nil,
        page: Int? = nil,
        per: Int? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
    ) {
        self.ids = ids
        self.attributeIds = attributeIds
        self.externalIds = externalIds
        self.value = value
        self.page = page
        self.per = per
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct AttributeValueCreateDto: Codable {
    // MARK: - Stored properties
    public let externalId: String?
    public let value: String
    public let attributeId: UUID

    // MARK: - Init
    public init(
        externalId: String? = nil,
        value: String,
        attributeId: UUID
    ) {
        self.externalId = externalId
        self.value = value
        self.attributeId = attributeId
    }
}

public struct AttributeValueUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let value: String
    public let attributeId: UUID

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String? = nil,
        value: String,
        attributeId: UUID
    ) {
        self.id = id
        self.externalId = externalId
        self.value = value
        self.attributeId = attributeId
    }
}

public struct AttributeValueCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [AttributeValueCreateDto]

    // MARK: - Init
    public init(items: [AttributeValueCreateDto]) {
        self.items = items
    }
}

public struct AttributeValueUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [AttributeValueUpdateDto]

    // MARK: - Init
    public init(items: [AttributeValueUpdateDto]) {
        self.items = items
    }
}
