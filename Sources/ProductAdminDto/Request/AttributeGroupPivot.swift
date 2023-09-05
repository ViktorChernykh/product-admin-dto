//
//  AttributeGroupPivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 23.12.2022.
//

import Foundation

public struct AttributeGroupPivotListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let attributeId: UUID?
	public let groupId: UUID?
	public let page: Int?
	public let per: Int?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]? = nil,
		externalIds: [String]? = nil,
		attributeId: UUID? = nil,
		groupId: UUID? = nil,
		page: Int? = nil,
		per: Int? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.attributeId = attributeId
		self.groupId = groupId
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct AttributeGroupPivotCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let attributeId: UUID
	public let groupId: UUID

	// MARK: - Init
	public init(
		externalId: String? = nil,
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
		externalId: String? = nil,
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
