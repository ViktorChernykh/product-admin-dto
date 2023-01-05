//
//  AttributeValueTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 11.09.2022.
//

import Foundation
import ProductDto

public struct AttributeValueTranslateListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let attributeValueIds: [UUID]?
	public let langs: [String]?
	public let page: Int?
	public let per: Int?
	public let translatedValue: String?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		attributeValueIds: [UUID]?,
		langs: [String]?,
		page: Int?,
		per: Int?,
		translatedValue: String?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.ids = ids
		self.attributeValueIds = attributeValueIds
		self.langs = langs
		self.page = page
		self.per = per
		self.translatedValue = translatedValue
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct AttributeValueTranslateCreateDto: Codable {
	// MARK: - Stored properties
	public let lang: String
	public let translatedValue: String
	public let attributeValueId: UUID

	// MARK: - Init
	public init(
		lang: String,
		translatedValue: String,
		attributeValueId: UUID
	) {
		self.lang = lang
		self.translatedValue = translatedValue
		self.attributeValueId = attributeValueId
	}
}

public struct AttributeValueTranslateUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let lang: String
	public let translatedValue: String
	public let attributeValueId: UUID

	// MARK: - Init
	public init(
		id: UUID,
		lang: String,
		translatedValue: String,
		attributeValueId: UUID
	) {
		self.id = id
		self.lang = lang
		self.translatedValue = translatedValue
		self.attributeValueId = attributeValueId
	}
}

public struct AttributeValueTranslateCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeValueTranslateCreateDto]

	// MARK: - Init
	public init(items: [AttributeValueTranslateCreateDto]) {
		self.items = items
	}
}

public struct AttributeValueTranslateUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [AttributeValueTranslateUpdateDto]

	// MARK: - Init
	public init(items: [AttributeValueTranslateUpdateDto]) {
		self.items = items
	}
}
