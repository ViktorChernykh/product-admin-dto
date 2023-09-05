//
//  Option.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.09.2022.
//

import Foundation
import ProductDto

public struct OptionListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let isRequired: Bool?
	public let name: String?
	public let optionType: OptionType?
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
		isRequired: Bool? = nil,
		name: String? = nil,
		optionType: OptionType? = nil,
		page: Int? = nil,
		per: Int? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.isRequired = isRequired
		self.name = name
		self.optionType = optionType
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct OptionCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let name: String
	public let isRequired: Bool
	public let optionType: OptionType

	// MARK: - Init
	public init(
		externalId: String? = nil,
		name: String,
		isRequired: Bool,
		optionType: OptionType
	) {
		self.externalId = externalId
		self.name = name
		self.isRequired = isRequired
		self.optionType = optionType
	}
}

public struct OptionUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let name: String
	public let isRequired: Bool
	public let optionType: OptionType

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		name: String,
		isRequired: Bool,
		optionType: OptionType
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
		self.isRequired = isRequired
		self.optionType = optionType
	}
}

public struct OptionCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [OptionCreateDto]

	// MARK: - Init
	public init(items: [OptionCreateDto]) {
		self.items = items
	}
}

public struct OptionUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [OptionUpdateDto]

	// MARK: - Init
	public init(items: [OptionUpdateDto]) {
		self.items = items
	}
}
