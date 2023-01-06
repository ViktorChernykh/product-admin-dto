//
//  OptionTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 31.08.2022.
//

import Foundation

public struct OptionTranslateListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let langs: [String]?
	public let optionIds: [UUID]?
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
		langs: [String]?,
		optionIds: [UUID]?,
		page: Int?,
		per: Int?,
		translatedName: String?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.langs = langs
		self.optionIds = optionIds
		self.page = page
		self.per = per
		self.translatedName = translatedName
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct OptionTranslateCreateDto: Codable {
	// MARK: - Stored properties
	public let lang: String
	public let translatedName: String
	public let optionId: UUID

	// MARK: - Init
	public init(
		lang: String,
		translatedName: String,
		optionId: UUID
	) {
		self.lang = lang
		self.translatedName = translatedName
		self.optionId = optionId
	}
}

public struct OptionTranslateUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let translatedName: String
	public let optionId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		translatedName: String,
		optionId: UUID
	) {
		self.id = id
		self.lang = lang
		self.translatedName = translatedName
		self.optionId = optionId
	}
}

public struct OptionTranslateCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [OptionTranslateCreateDto]

	// MARK: - Init
	public init(items: [OptionTranslateCreateDto]) {
		self.items = items
	}
}

public struct OptionTranslateUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [OptionTranslateUpdateDto]

	// MARK: - Init
	public init(items: [OptionTranslateUpdateDto]) {
		self.items = items
	}
}
