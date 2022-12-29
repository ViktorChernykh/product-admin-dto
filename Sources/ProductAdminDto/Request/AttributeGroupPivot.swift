//
//  AttributeGroupPivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 23.12.2022.
//

import Foundation
import ProductDto

public struct AttributeGroupPivotListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let attributeId: UUID?
	public let groupId: UUID?
	public let page: Int?
	public let per: Int?
	public let createdRange: DateRangeDto?
	public let updatedRange: DateRangeDto?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		attributeId: UUID?,
		groupId: UUID?,
		page: Int?,
		per: Int?,
		createdRange: DateRangeDto?,
		updatedRange: DateRangeDto?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.attributeId = attributeId
		self.groupId = groupId
		self.page = page
		self.per = per
		self.createdRange = createdRange
		self.updatedRange = updatedRange
	}
}

public struct AttributeGroupPivotCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let attributeId: UUID
	public let groupId: UUID

	// MARK: - Init
	public init(
		externalId: String?,
		attributeId: UUID,
		groupId: UUID
	) {
		self.externalId = externalId
		self.attributeId = attributeId
		self.groupId = groupId
	}
}

public struct AttributeGroupPivotUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let attributeId: UUID
	public let groupId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		attributeId: UUID,
		groupId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.attributeId = attributeId
		self.groupId = groupId
	}
}

public struct AttributeGroupPivotCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeGroupPivotCreateDto]

	// MARK: - Init
	public init(items: [AttributeGroupPivotCreateDto]) {
		self.items = items
	}
}

public struct AttributeGroupPivotUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeGroupPivotUpdateDto]

	// MARK: - Init
	public init(items: [AttributeGroupPivotUpdateDto]) {
		self.items = items
	}
}
