//
//  AttributeCategoryPivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 15.09.2022.
//

import Foundation

public struct AttributeCategoryPivotListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let attributeId: UUID?
	public let categoryId: UUID?
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
		categoryId: UUID? = nil,
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
		self.categoryId = categoryId
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct AttributeCategoryPivotCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let attributeId: UUID
	public let categoryId: UUID

	// MARK: - Init
	public init(
		externalId: String? = nil,
		attributeId: UUID,
		categoryId: UUID
	) {
		self.externalId = externalId
		self.attributeId = attributeId
		self.categoryId = categoryId
	}
}

public struct AttributeCategoryPivotUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let attributeId: UUID
	public let categoryId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		attributeId: UUID,
		categoryId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.attributeId = attributeId
		self.categoryId = categoryId
	}
}

public struct AttributeCategoryPivotSetDto: Codable {
	// MARK: - Stored properties
	public let categoryId: UUID
	public let groupId: UUID

	// MARK: - Init
	public init(
		categoryId: UUID,
		groupId: UUID
	) {
		self.categoryId = categoryId
		self.groupId = groupId
	}
}

public struct AttributeCategoryPivotCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeCategoryPivotCreateDto]

	// MARK: - Init
	public init(items: [AttributeCategoryPivotCreateDto]) {
		self.items = items
	}
}

public struct AttributeCategoryPivotUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeCategoryPivotUpdateDto]

	// MARK: - Init
	public init(items: [AttributeCategoryPivotUpdateDto]) {
		self.items = items
	}
}
