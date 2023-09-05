//
//  ProductTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 07.04.2022.
//

import Foundation

public struct ProductTranslateListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let langs: [String]?
	public let page: Int?
	public let per: Int?
	public let productIds: [UUID]?
	public let translatedName: String?
	public let translatedSpecification: String?
	public let translatedSubtitle: String?
	public let translatedUnit: String?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]? = nil,
		langs: [String]? = nil,
		page: Int? = nil,
		per: Int? = nil,
		productIds: [UUID]? = nil,
		translatedName: String? = nil,
		translatedSpecification: String? = nil,
		translatedSubtitle: String? = nil,
		translatedUnit: String? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
	) {
		self.ids = ids
		self.langs = langs
		self.page = page
		self.per = per
		self.productIds = productIds
		self.translatedName = translatedName
		self.translatedSpecification = translatedSpecification
		self.translatedSubtitle = translatedSubtitle
		self.translatedUnit = translatedUnit
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct ProductTranslateCreateDto: Codable {
	// MARK: - Stored properties
	public let lang: String
	public let translatedName: String
	public let translatedSpecification: String?
	public let translatedSubtitle: String?
	public let translatedUnit: String
	public let productId: UUID

	// MARK: - Init
	public init(
		lang: String,
		translatedName: String,
		translatedSpecification: String?,
		translatedSubtitle: String?,
		translatedUnit: String,
		productId: UUID
	) {
		self.lang = lang
		self.translatedName = translatedName
		self.translatedSpecification = translatedSpecification
		self.translatedSubtitle = translatedSubtitle
		self.translatedUnit = translatedUnit
		self.productId = productId
	}
}

public struct ProductTranslateUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let translatedName: String
	public let translatedSpecification: String?
	public let translatedSubtitle: String?
	public let translatedUnit: String

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		translatedName: String,
		translatedSpecification: String?,
		translatedSubtitle: String?,
		translatedUnit: String
	) {
		self.id = id
		self.lang = lang
		self.translatedName = translatedName
		self.translatedSpecification = translatedSpecification
		self.translatedSubtitle = translatedSubtitle
		self.translatedUnit = translatedUnit
	}
}

public struct ProductTranslateCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductTranslateCreateDto]

	// MARK: - Init
	public init(items: [ProductTranslateCreateDto]) {
		self.items = items
	}
}

public struct ProductTranslateUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [ProductTranslateUpdateDto]

	// MARK: - Init
	public init(items: [ProductTranslateUpdateDto]) {
		self.items = items
	}
}
