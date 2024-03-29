//
//  OptionCategoryPivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 22.12.2022.
//

import Foundation

public struct OptionCategoryPivotListDto: Codable {
	// MARK: - Stored properties
	public let categoryId: UUID?
	public let externalIds: [String]?
	public let optionId: UUID?
	public let page: Int?
	public let per: Int?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		categoryId: UUID? = nil,
		externalIds: [String]? = nil,
		optionId: UUID? = nil,
		page: Int? = nil,
		per: Int? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
	) {
		self.categoryId = categoryId
		self.externalIds = externalIds
		self.optionId = optionId
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct OptionCategoryPivotCreateDto: Codable {
	// MARK: - Stored properties
	public let categoryId: UUID
	public let externalId: String?
	public let optionId: UUID

	// MARK: - Init
	public init(
		categoryId: UUID,
		externalId: String? = nil,
		optionId: UUID
	) {
		self.categoryId = categoryId
		self.externalId = externalId
		self.optionId = optionId
	}
}

public struct OptionCategoryPivotUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let categoryId: UUID
	public let externalId: String?
	public let optionId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		categoryId: UUID,
		externalId: String? = nil,
		optionId: UUID
	) {
		self.id = id
		self.categoryId = categoryId
		self.externalId = externalId
		self.optionId = optionId
	}
}

public struct OptionCategoryPivotCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [OptionCategoryPivotCreateDto]

	// MARK: - Init
	public init(items: [OptionCategoryPivotCreateDto]) {
		self.items = items
	}
}

public struct OptionCategoryPivotUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [OptionCategoryPivotUpdateDto]

	// MARK: - Init
	public init(items: [OptionCategoryPivotUpdateDto]) {
		self.items = items
	}
}
