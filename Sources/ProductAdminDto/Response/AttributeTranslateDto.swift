//
//  AttributeTranslateDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.09.2022.
//

import Foundation

public struct AttributeTranslateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let lang: String
    public let name: String
    public let unit: String
    public let createdAt: Date
    public let updatedAt: Date?

    public enum CodingKeys: String, CodingKey {
        case id
        case lang
        case name = "translatedName"
        case unit = "translatedUnit"
        case createdAt
        case updatedAt
    }

    // MARK: - Init
    public init(
        id: UUID,
        lang: String,
        name: String,
        unit: String,
        createdAt: Date,
        updatedAt: Date?
    ) {
        self.id = id
        self.lang = lang
        self.name = name
        self.unit = unit
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
