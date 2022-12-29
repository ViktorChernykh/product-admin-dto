//
//  CategoryTranslateDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 06.04.2022.
//

import Foundation

public struct CategoryTranslateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let name: String
	public let specification: String?
	public let createdAt: Date
	public let updatedAt: Date?

	public enum CodingKeys: String, CodingKey {
		case id
		case lang
		case name = "translatedName"
		case specification = "translatedSpecification"
		case createdAt
		case updatedAt
	}

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		name: String,
		specification: String?,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.lang = lang
		self.name = name
		self.specification = specification
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
