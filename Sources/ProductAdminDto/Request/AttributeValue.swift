//
//  AttributeValue.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.09.2022.
//

import Foundation
import ProductDto

public struct AttributeValueListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let attributeIds: [UUID]?
	public let externalIds: [String]?
	public let value: String?
	public let page: Int?
	public let per: Int?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		attributeIds: [UUID]?,
		externalIds: [String]?,
		value: String?,
		page: Int?,
		per: Int?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.attributeIds = attributeIds
		self.externalIds = externalIds
		self.value = value
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct AttributeValueCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let value: String
	public let attributeId: UUID

	// MARK: - Init
	public init(
		externalId: String?,
		value: String,
		attributeId: UUID
	) {
		self.externalId = externalId
		self.value = value
		self.attributeId = attributeId
	}
}

public struct AttributeValueUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let value: String
	public let attributeId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		value: String,
		attributeId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.value = value
		self.attributeId = attributeId
	}
}

public struct AttributeValueCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeValueCreateDto]

	// MARK: - Init
	public init(items: [AttributeValueCreateDto]) {
		self.items = items
	}
}

public struct AttributeValueUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeValueUpdateDto]

	// MARK: - Init
	public init(items: [AttributeValueUpdateDto]) {
		self.items = items
	}
}
