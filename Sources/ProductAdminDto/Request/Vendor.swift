//
//  Vendor.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 21.03.2022.
//

import Foundation
import ProductDto

public struct VendorListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let name: String?
	public let page: Int?
	public let per: Int?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		name: String?,
		page: Int?,
		per: Int?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.name = name
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct VendorCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let image: String?
	public let name: String
	public let description: String?

	// MARK: - Init
	public init(
		externalId: String?,
		image: String?,
		name: String,
		description: String?
	) {
		self.externalId = externalId
		self.image = image
		self.name = name
		self.description = description
	}
}

public struct VendorUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let image: String?
	public let name: String
	public let description: String?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		image: String?,
		name: String,
		description: String?
	) {
		self.id = id
		self.externalId = externalId
		self.image = image
		self.name = name
		self.description = description
	}
}

public struct VendorCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [VendorCreateDto]

	// MARK: - Init
	public init(items: [VendorCreateDto]) {
		self.items = items
	}
}

public struct VendorUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [VendorUpdateDto]

	// MARK: - Init
	public init(items: [VendorUpdateDto]) {
		self.items = items
	}
}
