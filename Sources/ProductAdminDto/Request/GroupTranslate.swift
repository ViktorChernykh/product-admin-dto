//
//  GroupTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 31.08.2022.
//

import Foundation

public struct GroupTranslateListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let groupIds: [UUID]?
	public let langs: [String]?
	public let page: Int?
	public let per: Int?
	public let translatedName: String?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		groupIds: [UUID]?,
		langs: [String]?,
		page: Int?,
		per: Int?,
		translatedName: String?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.groupIds = groupIds
		self.langs = langs
		self.page = page
		self.per = per
		self.translatedName = translatedName
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct GroupTranslateCreateDto: Codable {
	// MARK: - Stored properties
	public let lang: String
	public let translatedName: String
	public let groupId: UUID

	// MARK: - Init
	public init(
		lang: String,
		translatedName: String,
		groupId: UUID
	) {
		self.lang = lang
		self.translatedName = translatedName
		self.groupId = groupId
	}
}

public struct GroupTranslateUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let translatedName: String
	public let groupId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		translatedName: String,
		groupId: UUID
	) {
		self.id = id
		self.lang = lang
		self.translatedName = translatedName
		self.groupId = groupId
	}
}

public struct GroupTranslateCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [GroupTranslateCreateDto]

	// MARK: - Init
	public init(items: [GroupTranslateCreateDto]) {
		self.items = items
	}
}

public struct GroupTranslateUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [GroupTranslateUpdateDto]

	// MARK: - Init
	public init(items: [GroupTranslateUpdateDto]) {
		self.items = items
	}
}
