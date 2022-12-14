//
//  ProductAttributeValueDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 29.11.2022.
//

import Foundation

public struct ProductAttributeValueDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let attributeId: UUID
    public let attributeValueId: UUID
    public let productId: UUID
    public let createdAt: Date
    public let updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String?,
        attributeId: UUID,
        attributeValueId: UUID,
        productId: UUID,
        createdAt: Date,
        updatedAt: Date?
    ) {
        self.id = id
        self.externalId = externalId
        self.attributeId = attributeId
        self.attributeValueId = attributeValueId
        self.productId = productId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
