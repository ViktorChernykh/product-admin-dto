//
//  AttributeCategoryDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 13.04.2022.
//

import Foundation

public struct AttributeCategoryDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let attributeId: UUID
    public let categoryId: UUID
    public let createdAt: Date
    public let updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String? = nil,
        attributeId: UUID,
        categoryId: UUID,
        createdAt: Date,
        updatedAt: Date? = nil
    ) {
        self.id = id
        self.externalId = externalId
        self.attributeId = attributeId
        self.categoryId = categoryId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
