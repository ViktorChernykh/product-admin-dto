//
//  Attribute.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 13.04.2022.
//

import Foundation
import ProductDto

public struct AttributeListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let categoryId: UUID
	public let externalIds: [String]?
	public let isFilter: Bool?
	public let lang: String?
	public let name: String?
	public let page: Int?
	public let per: Int?
	public let type: AttributeType?
	public let unit: String?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]? = nil,
		categoryId: UUID,
		externalIds: [String]? = nil,
		isFilter: Bool? = nil,
		lang: String? = nil,
		name: String? = nil,
		page: Int? = nil,
		per: Int? = nil,
		type: AttributeType? = nil,
		unit: String? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
	) {
		self.ids = ids
		self.categoryId = categoryId
		self.externalIds = externalIds
		self.isFilter = isFilter
		self.lang = lang
		self.name = name
		self.page = page
		self.per = per
		self.type = type
		self.unit = unit
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct AttributeCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let isNumber: Bool
	public let isFilter: Bool
	public let name: String
	public let order: Int?
	public let type: AttributeType	// checkBox, radio, range
	public let unit: String?

	// MARK: - Init
	public init(
		externalId: String? = nil,
		isNumber: Bool,
		isFilter: Bool,
		name: String,
		order: Int?,
		type: AttributeType,
		unit: String?
	) {
		self.externalId = externalId
		self.isNumber = isNumber
		self.isFilter = isFilter
		self.name = name
		self.order = order
		self.type = type
		self.unit = unit
	}
}

public struct AttributeUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let isNumber: Bool
	public let isFilter: Bool
	public let name: String
	public let order: Int?
	public let type: AttributeType	// checkBox, radio, range
	public let unit: String?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		isNumber: Bool,
		isFilter: Bool,
		name: String,
		order: Int?,
		type: AttributeType,
		unit: String?
	) {
		self.id = id
		self.externalId = externalId
		self.isNumber = isNumber
		self.isFilter = isFilter
		self.name = name
		self.order = order
		self.type = type
		self.unit = unit
	}
}

public struct AttributeCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeCreateDto]

	// MARK: - Init
	public init(items: [AttributeCreateDto]) {
		self.items = items
	}
}

public struct AttributeUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeUpdateDto]

	// MARK: - Init
	public init(items: [AttributeUpdateDto]) {
		self.items = items
	}
}
