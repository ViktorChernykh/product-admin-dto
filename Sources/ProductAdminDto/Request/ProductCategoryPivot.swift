//
//  ProductCategoryPivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 23.12.2022.
//

import Foundation
import ProductDto

public struct ProductCategoryPivotListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let categoryIds: [UUID]?
	public let page: Int?
	public let per: Int?
	public let productIds: [UUID]?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		categoryIds: [UUID]?,
		page: Int?,
		per: Int?,
		productIds: [UUID]?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.categoryIds = categoryIds
		self.page = page
		self.per = per
		self.productIds = productIds
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct ProductCategoryPivotCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let categoryId: UUID
	public let productId: UUID

	// MARK: - Init
	public init(
		externalId: String?,
		categoryId: UUID,
		productId: UUID
	) {
		self.externalId = externalId
		self.categoryId = categoryId
		self.productId = productId
	}
}

public struct ProductCategoryPivotUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let categoryId: UUID
	public let productId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		categoryId: UUID,
		productId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.categoryId = categoryId
		self.productId = productId
	}
}

public struct ProductCategoryPivotCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductCategoryPivotCreateDto]

	// MARK: - Init
	public init(items: [ProductCategoryPivotCreateDto]) {
		self.items = items
	}
}

public struct ProductCategoryPivotUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductCategoryPivotUpdateDto]

	// MARK: - Init
	public init(items: [ProductCategoryPivotUpdateDto]) {
		self.items = items
	}
}
