//
//  AttributeDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 26.11.2022.
//

import Foundation
import ProductDto

public struct AttributeDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let isNumber: Bool
    public let isFilter: Bool
    public let name: String
    public let order: Int?
    public let type: AttributeType
    public let unit: String?
    public let createdAt: Date
    public let updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String?,
        isNumber: Bool,
        isFilter: Bool,
        name: String,
        order: Int?,
        type: AttributeType,
        unit: String?,
        createdAt: Date,
        updatedAt: Date?
    ) {
        self.id = id
        self.externalId = externalId
        self.isNumber = isNumber
        self.isFilter = isFilter
        self.name = name
        self.order = order
        self.type = type
        self.unit = unit
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
