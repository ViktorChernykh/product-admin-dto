//
//  AttributeGroupTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 31.08.2022.
//

import Foundation
import ProductDto

public struct AttributeGroupTranslateListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let attributeGroupIds: [UUID]?
	public let langs: [String]?
	public let page: Int?
	public let per: Int?
	public let translatedName: String?
	public let createdRange: DateRangeDto?
	public let updatedRange: DateRangeDto?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		attributeGroupIds: [UUID]?,
		langs: [String]?,
		page: Int?,
		per: Int?,
		translatedName: String?,
		createdRange: DateRangeDto?,
		updatedRange: DateRangeDto?
	) {
		self.ids = ids
		self.attributeGroupIds = attributeGroupIds
		self.langs = langs
		self.page = page
		self.per = per
		self.translatedName = translatedName
		self.createdRange = createdRange
		self.updatedRange = updatedRange
	}
}

public struct AttributeGroupTranslateCreateDto: Codable {
	// MARK: - Stored properties
	public let lang: String
	public let translatedName: String
	public let attributeGroupId: UUID

	// MARK: - Init
	public init(
		lang: String,
		translatedName: String,
		attributeGroupId: UUID
	) {
		self.lang = lang
		self.translatedName = translatedName
		self.attributeGroupId = attributeGroupId
	}
}

public struct AttributeGroupTranslateUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let translatedName: String
	public let attributeGroupId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		translatedName: String,
		attributeGroupId: UUID
	) {
		self.id = id
		self.lang = lang
		self.translatedName = translatedName
		self.attributeGroupId = attributeGroupId
	}
}

public struct AttributeGroupTranslateCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeGroupTranslateCreateDto]

	// MARK: - Init
	public init(items: [AttributeGroupTranslateCreateDto]) {
		self.items = items
	}
}

public struct AttributeGroupTranslateUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeGroupTranslateUpdateDto]

	// MARK: - Init
	public init(items: [AttributeGroupTranslateUpdateDto]) {
		self.items = items
	}
}
