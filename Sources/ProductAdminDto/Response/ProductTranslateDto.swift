//
//  ProductTranslateDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 28.03.2022.
//

import Foundation

public struct ProductTranslateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let lang: String
    public let name: String
    public let specification: String?
    public let subtitle: String?
    public let unit: String
    public let createdAt: Date
    public let updatedAt: Date?

    public enum CodingKeys: String, CodingKey {
        case id
        case lang
        case name = "translatedName"
        case specification = "translatedSpecification"
        case subtitle = "translatedSubtitle"
        case unit = "translatedUnit"
        case createdAt
        case updatedAt
    }

    // MARK: - Init
    public init(
        id: UUID,
        lang: String,
        name: String,
        specification: String?,
        subtitle: String?,
        unit: String,
        createdAt: Date,
        updatedAt: Date?
    ) {
        self.id = id
        self.lang = lang
        self.name = name
        self.specification = specification
        self.subtitle = subtitle
        self.unit = unit
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
