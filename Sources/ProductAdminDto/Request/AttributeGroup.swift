//
//  AttributeGroup.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 28.04.2022.
//

import Foundation
import ProductDto

public struct AttributeGroupListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let langs: [String]?
	public let name: String?
	public let page: Int?
	public let per: Int?
	public let createdRange: DateRangeDto?
	public let updatedRange: DateRangeDto?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		langs: [String]?,
		name: String?,
		page: Int?,
		per: Int?,
		createdRange: DateRangeDto?,
		updatedRange: DateRangeDto?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.langs = langs
		self.name = name
		self.page = page
		self.per = per
		self.createdRange = createdRange
		self.updatedRange = updatedRange
	}
}

public struct AttributeGroupCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let name: String

	// MARK: - Init
	public init(
		externalId: String?,
		name: String
	) {
		self.externalId = externalId
		self.name = name
	}
}

public struct AttributeGroupUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let name: String

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		name: String
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
	}
}

public struct AttributeGroupCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeGroupCreateDto]

	// MARK: - Init
	public init(items: [AttributeGroupCreateDto]) {
		self.items = items
	}
}

public struct AttributeGroupUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeGroupUpdateDto]

	// MARK: - Init
	public init(items: [AttributeGroupUpdateDto]) {
		self.items = items
	}
}
