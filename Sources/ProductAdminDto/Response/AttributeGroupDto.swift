//
//  AttributeGroupDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 28.04.2022.
//

import Foundation

public struct AttributeGroupDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let name: String
    public let createdAt: Date
    public let updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String?,
        name: String,
        createdAt: Date,
        updatedAt: Date?
    ) {
        self.id = id
        self.externalId = externalId
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
