//
//  OptionValueTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 12.09.2022.
//

import Foundation
import ProductDto

public struct OptionValueTranslateListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let langs: [String]?
    public let optionValueIds: [UUID]?  // parent
    public let page: Int?
    public let per: Int?
    public let translatedValue: String?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]?,
        langs: [String]?,
        optionValueIds: [UUID]?,
        page: Int?,
        per: Int?,
        translatedValue: String?,
        createdRange: DateRangeDto?,
        updatedRange: DateRangeDto?
    ) {
        self.ids = ids
        self.langs = langs
        self.optionValueIds = optionValueIds
        self.page = page
        self.per = per
        self.translatedValue = translatedValue
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct OptionValueTranslateCreateDto: Codable {
    // MARK: - Stored properties
    public let lang: String
    public let translatedValue: String
    public let optionValueId: UUID

    // MARK: - Init
    public init(
        lang: String,
        translatedValue: String,
        optionValueId: UUID
    ) {
        self.lang = lang
        self.translatedValue = translatedValue
        self.optionValueId = optionValueId
    }
}

public struct OptionValueTranslateUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let lang: String
    public let translatedValue: String
    public let optionValueId: UUID

    // MARK: - Init
    public init(
        id: UUID,
        lang: String,
        translatedValue: String,
        optionValueId: UUID
    ) {
        self.id = id
        self.lang = lang
        self.translatedValue = translatedValue
        self.optionValueId = optionValueId
    }
}

public struct OptionValueTranslateCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [OptionValueTranslateCreateDto]

    // MARK: - Init
    public init(items: [OptionValueTranslateCreateDto]) {
        self.items = items
    }
}

public struct OptionValueTranslateUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [OptionValueTranslateUpdateDto]

    // MARK: - Init
    public init(items: [OptionValueTranslateUpdateDto]) {
        self.items = items
    }
}
