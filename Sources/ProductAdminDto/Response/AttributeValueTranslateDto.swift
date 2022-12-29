//
//  AttributeValueTranslateDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 11.09.2022.
//

import Foundation

public struct AttributeValueTranslateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let value: String
	public let createdAt: Date
	public let updatedAt: Date?

	public enum CodingKeys: String, CodingKey {
		case id
		case lang
		case value = "translatedValue"
		case createdAt
		case updatedAt
	}

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		value: String,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.lang = lang
		self.value = value
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
