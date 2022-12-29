//
//  ProductAttributeValuePivot.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 23.12.2022.
//

import Foundation
import ProductDto

public struct ProductAttributeValuePivotListDto: Codable {
	// MARK: - Stored properties
	public let externalIds: [String]?
	public let attributeId: UUID?
	public let attributeValueId: UUID?
	public let page: Int?
	public let per: Int?
	public let productId: UUID?
	public let createdRange: DateRangeDto?
	public let updatedRange: DateRangeDto?

	// MARK: - Init
	public init(
		externalIds: [String]?,
		attributeId: UUID?,
		attributeValueId: UUID?,
		page: Int?,
		per: Int?,
		productId: UUID?,
		createdRange: DateRangeDto?,
		updatedRange: DateRangeDto?
	) {
		self.externalIds = externalIds
		self.attributeId = attributeId
		self.attributeValueId = attributeValueId
		self.page = page
		self.per = per
		self.productId = productId
		self.createdRange = createdRange
		self.updatedRange = updatedRange
	}
}

public struct ProductAttributeValuePivotCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let attributeId: UUID
	public let attributeValueId: UUID
	public let productId: UUID

	// MARK: - Init
	public init(
		externalId: String?,
		attributeId: UUID,
		attributeValueId: UUID,
		productId: UUID
	) {
		self.externalId = externalId
		self.attributeId = attributeId
		self.attributeValueId = attributeValueId
		self.productId = productId
	}
}

public struct ProductAttributeValuePivotUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let attributeId: UUID
	public let attributeValueId: UUID
	public let productId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		attributeId: UUID,
		attributeValueId: UUID,
		productId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.attributeId = attributeId
		self.attributeValueId = attributeValueId
		self.productId = productId
	}
}

public struct ProductAttributeValuePivotCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductAttributeValuePivotCreateDto]

	// MARK: - Init
	public init(items: [ProductAttributeValuePivotCreateDto]) {
		self.items = items
	}
}

public struct ProductAttributeValuePivotUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductAttributeValuePivotUpdateDto]

	// MARK: - Init
	public init(items: [ProductAttributeValuePivotUpdateDto]) {
		self.items = items
	}
}
