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
public struct CharacteristicRequestDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let externalId: String?
	public let optionId: UUID?
	public let optionId2: UUID?
	public let optionId3: UUID?
	public let optionId4: UUID?
	public let optionName: String?
	public let optionName2: String?
	public let optionName3: String?
	public let optionName4: String?
	public let optionValueId: UUID?
	public let optionValueId2: UUID?
	public let optionValueId3: UUID?
	public let optionValueId4: UUID?
	public let optionValueName: String?
	public let optionValueName2: String?
	public let optionValueName3: String?
	public let optionValueName4: String?

	// MARK: - Init
	public init(
		id: UUID? = nil,
		externalId: String? = nil,
		optionId: UUID?,
		optionId2: UUID? = nil,
		optionId3: UUID? = nil,
		optionId4: UUID? = nil,
		optionName: String?,
		optionName2: String? = nil,
		optionName3: String? = nil,
		optionName4: String? = nil,
		optionValueId: UUID?,
		optionValueId2: UUID? = nil,
		optionValueId3: UUID? = nil,
		optionValueId4: UUID? = nil,
		optionValueName: String?,
		optionValueName2: String? = nil,
		optionValueName3: String? = nil,
		optionValueName4: String? = nil
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionId2 = optionId2
		self.optionId3 = optionId3
		self.optionId4 = optionId4
		self.optionName = optionName
		self.optionName2 = optionName2
		self.optionName3 = optionName3
		self.optionName4 = optionName4
		self.optionValueId = optionValueId
		self.optionValueId2 = optionValueId2
		self.optionValueId3 = optionValueId3
		self.optionValueId4 = optionValueId4
		self.optionValueName = optionValueName
		self.optionValueName2 = optionValueName2
		self.optionValueName3 = optionValueName3
		self.optionValueName4 = optionValueName4
	}
}

public struct CharacteristicRequestListDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let name: String
	public let productId: UUID
	public let items: [CharacteristicRequestDto]

	// MARK: - Init
	public init(
		externalId: String? = nil,
		name: String,
		productId: UUID,
		items: [CharacteristicRequestDto]
	) {
		self.externalId = externalId
		self.name = name
		self.productId = productId
		self.items = items
	}
}
