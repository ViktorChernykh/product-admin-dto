//
//  Characteristic.swift
//  ProductService
//
//  Created by Victor Chernykh on 19.12.2022.
//

import Foundation

public struct CharacteristicListDto: Codable {
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
		ids: [UUID]? = nil,
		externalIds: [String]? = nil,
		page: Int? = nil,
		per: Int? = nil,
		optionIds: [UUID]? = nil,
		optionValueIds: [UUID]? = nil,
		productIds: [UUID]? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
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

/// Used only by CharacteristicCreateListDto.
public struct CharacteristicCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID

	// MARK: - Init
	public init(
		externalId: String? = nil,
		optionId: UUID,
		optionValueId: UUID
	) {
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
	}
}

/// Used only by CharacteristicUpdateListDto.
public struct CharacteristicUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		optionId: UUID,
		optionValueId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
	}
}

/// Used only by CharacteristicSaveListDto.
public struct CharacteristicSaveDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID

	// MARK: - Init
	public init(
		id: UUID?,
		externalId: String? = nil,
		optionId: UUID,
		optionValueId: UUID
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
	}
}

public struct CharacteristicCreateListDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [CharacteristicCreateDto]

	// MARK: - Init
	public init(
		externalId: String? = nil,
		name: String,
		productId: UUID,
		items: [CharacteristicCreateDto]
	) {
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}

public struct CharacteristicUpdateListDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [CharacteristicUpdateDto]

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		name: String,
		productId: UUID,
		items: [CharacteristicUpdateDto]
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}

public struct CharacteristicSaveListDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [CharacteristicSaveDto]

	// MARK: - Init
	public init(
		id: UUID?,
		externalId: String? = nil,
		name: String,
		productId: UUID,
		items: [CharacteristicSaveDto]
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}
