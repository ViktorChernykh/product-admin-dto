//
//  AttributeGroupTranslateDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.09.2022.
//

import Foundation

public struct AttributeGroupTranslateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let name: String
	public let createdAt: Date
	public let updatedAt: Date?

	public enum CodingKeys: String, CodingKey {
		case id
		case lang
		case name = "translatedName"
		case createdAt
		case updatedAt
	}

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		name: String,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.lang = lang
		self.name = name
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
