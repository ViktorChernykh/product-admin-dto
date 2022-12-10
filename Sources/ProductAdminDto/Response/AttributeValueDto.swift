//
//  AttributeValueDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.05.2022.
//

import Foundation

public struct AttributeValueDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let attributeId: UUID
    public let value: String
    public let createdAt: Date
    public let updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String?,
        attributeId: UUID,
        value: String,
        createdAt: Date,
        updatedAt: Date?
    ) {
        self.id = id
        self.externalId = externalId
        self.attributeId = attributeId
        self.value = value
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
