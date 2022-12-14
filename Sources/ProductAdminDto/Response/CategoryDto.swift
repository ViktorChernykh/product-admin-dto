//
//  CategoryDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 19.03.2022.
//

import Foundation

public struct CategoryDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public var externalId: String?
    public var image: String?
    public let isVisible: Bool
    public let name: String
    public let order: Int
    public let parentId: UUID?
    public let specification: String?
    public let createdAt: Date
    public let updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String? = nil,
        image: String? = nil,
        isVisible: Bool,
        name: String,
        order: Int,
        parentId: UUID? = nil,
        specification: String? = nil,
        createdAt: Date,
        updatedAt: Date? = nil
    ) {
        self.id = id
        self.externalId = externalId
        self.image = image
        self.isVisible = isVisible
        self.name = name
        self.order = order
        self.parentId = parentId
        self.specification = specification
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
