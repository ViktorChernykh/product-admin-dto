//
//  OptionValueHeaderPivot.swift
//  ProductService
//
//  Created by Victor Chernykh on 19.12.2022.
//

import Foundation

public struct OptionValueHeaderPivotListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let page: Int?
	public let per: Int?
	public let optionIds: [UUID]?
	public let optionValueIds: [UUID]?
	public let productIds: [UUID]?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		page: Int?,
		per: Int?,
		optionIds: [UUID]?,
		optionValueIds: [UUID]?,
		productIds: [UUID]?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.page = page
		self.per = per
		self.optionIds = optionIds
		self.optionValueIds = optionValueIds
		self.productIds = productIds
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct OptionValueHeaderPivotCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID

	// MARK: - Init
	public init(
		externalId: String?,
		optionId: UUID,
		optionValueId: UUID
	) {
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
	}
}

public struct OptionValueHeaderPivotUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		optionId: UUID,
		optionValueId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
	}
}

public struct OptionValueHeaderPivotSaveDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID

	// MARK: - Init
	public init(
		id: UUID?,
		externalId: String?,
		optionId: UUID,
		optionValueId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
	}
}

public struct OptionValueHeaderPivotCreateListDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [OptionValueHeaderPivotCreateDto]

	// MARK: - Init
	public init(
		externalId: String?,
		name: String,
		productId: UUID,
		items: [OptionValueHeaderPivotCreateDto]
	) {
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}

public struct OptionValueHeaderPivotUpdateListDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [OptionValueHeaderPivotUpdateDto]

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		name: String,
		productId: UUID,
		items: [OptionValueHeaderPivotUpdateDto]
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}

public struct OptionValueHeaderPivotSaveListDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [OptionValueHeaderPivotSaveDto]

	// MARK: - Init
	public init(
		id: UUID?,
		externalId: String?,
		name: String,
		productId: UUID,
		items: [OptionValueHeaderPivotSaveDto]
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}
