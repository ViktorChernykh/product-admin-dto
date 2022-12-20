//
//  ProductOptionValue.swift
//  ProductService
//
//  Created by Victor Chernykh on 19.12.2022.
//

import Foundation
import ProductDto

struct ProductOptionValueListDto {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let page: Int?
	public let per: Int?
	public let optionIds: [UUID]?
	public let optionValueIds: [UUID]?
	public let productIds: [UUID]?
	public let createdRange: DateRangeDto?
	public let updatedRange: DateRangeDto?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		page: Int?,
		per: Int?,
		optionIds: [UUID]?,
		optionValueIds: [UUID]?,
		productIds: [UUID]?,
		createdRange: DateRangeDto?,
		updatedRange: DateRangeDto?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.page = page
		self.per = per
		self.optionIds = optionIds
		self.optionValueIds = optionValueIds
		self.productIds = productIds
		self.createdRange = createdRange
		self.updatedRange = updatedRange
	}
}

public struct ProductOptionValueCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID
	public let productId: UUID

	// MARK: - Init
	public init(
		externalId: String?,
		optionId: UUID,
		optionValueId: UUID,
		productId: UUID
	) {
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
		self.productId = productId
	}
}

public struct ProductOptionValueUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID
	public let productId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		optionId: UUID,
		optionValueId: UUID,
		productId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
		self.productId = productId
	}
}

public struct ProductOptionValueCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductOptionValueCreateDto]

	// MARK: - Init
	public init(items: [ProductOptionValueCreateDto]) {
		self.items = items
	}
}

public struct ProductOptionValueUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductOptionValueUpdateDto]

	// MARK: - Init
	public init(items: [ProductOptionValueUpdateDto]) {
		self.items = items
	}
}
