//
//  Group.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 28.04.2022.
//

import Foundation

public struct GroupListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let langs: [String]?
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
		langs: [String]?,
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
		self.langs = langs
		self.name = name
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct GroupCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let name: String

	// MARK: - Init
	public init(
		externalId: String?,
		name: String
	) {
		self.externalId = externalId
		self.name = name
	}
}

public struct GroupUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let name: String

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		name: String
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
	}
}

public struct GroupCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [GroupCreateDto]

	// MARK: - Init
	public init(items: [GroupCreateDto]) {
		self.items = items
	}
}

public struct GroupUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [GroupUpdateDto]

	// MARK: - Init
	public init(items: [GroupUpdateDto]) {
		self.items = items
	}
}
